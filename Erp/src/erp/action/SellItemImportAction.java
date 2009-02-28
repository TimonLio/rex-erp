package erp.action;

import java.io.FileInputStream;
import java.io.InputStreamReader;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.apache.log4j.BasicConfigurator;
import org.apache.log4j.Level;
import org.apache.log4j.Logger;

import com.opensymphony.xwork2.ActionSupport;

import erp.model.InvoiceItem;
import erp.model.Sell;
import erp.model.SellItem;
import erp.service.SellItemService;
import erp.service.SellService;
import erp.service.WareService;

public class SellItemImportAction extends ActionSupport {

	private static final long serialVersionUID = 1L;
	private final static Logger logger = Logger
			.getLogger(SellItemImportAction.class);

	private SellService sellService;
	private SellItemService sellItemService;
	private WareService wareService;

	private int sellId;
	private Sell sell;
	private String sellContent;
	private List<InvoiceItem> itemList;
	private List<SellItem> sellItemList;
	private double totalPrice;
	private double totalExFee;

	@Override
	public String input() throws Exception {
		sell = sellService.getSellById(sellId);
		if (sell != null) {
			sellItemList = sellItemService.listBySell(sell);
			for (SellItem item : sellItemList) {
				item.setWare(wareService.getWareById(item.getWareId()));
			}
		}
		return SUCCESS;
	}

	@Override
	public String execute() throws Exception {
		try {
			itemList = new ArrayList<InvoiceItem>();
			totalPrice = 0;
			totalExFee = 0;
			InvoiceItem item = null;
			SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
			String dateStr = "([0-9]{4}-[0-9]{1,2}-[0-9]{1,2})";

			String[] infos = sellContent.split("\n");
			ArrayList<String> infoArray = new ArrayList<String>();
			for (int i = 0; i < infos.length; i++) {
				if (infos[i].trim().length() > 0) {
					infoArray.add(infos[i].trim());
				}
			}

					
			Pattern pattern = Pattern.compile(dateStr);
			Matcher matcher;
			for (int i = 0; i < infoArray.size(); i++) {
				Date date = new Date();
				int num = 1;
				String name = "";
				String byerId = "";
				String byerName = "";
				double price = 0;
				double exFee = 0;
				double total = 0;

				String info = infoArray.get(i);
				//logger.debug("info[" + i + "]:" + info);

				matcher = pattern.matcher(info);
				if (matcher.find()) {
					if (infoArray.get(i + 3).indexOf("交易关闭") > -1) continue;
					
					int posIndex;
					try {
						date = formatter.parse(matcher.group(1));
					} catch (Exception ex) {}
					
					info = infoArray.get(i + 1);
					posIndex = info.lastIndexOf("-");

					infos = info.substring(0, posIndex - 1).trim().split(" ");					
					try {
						num = Integer.valueOf(infos[infos.length - 1]);
					} catch (Exception ex) {}
					
					try {
						price = Double.valueOf(infos[infos.length - 2]);
					} catch (Exception ex) {}

					StringBuffer nameBuffer = new StringBuffer();
					for (int j = 0; j < infos.length - 2; j++) {
						nameBuffer.append(infos[j]);
						nameBuffer.append(" ");
					}
					name = nameBuffer.toString().trim();

					byerId = info.substring(posIndex + 1).trim();
					byerName = infoArray.get(i + 2).trim();
					byerName = byerName.equals("----") ? "" : byerName;
					
					for (int j = i + 4; j < infoArray.size(); j++) {
						info = infoArray.get(j);
						posIndex = info.indexOf("含快递 ：");
						if (posIndex > -1) {
							try {							
								exFee = Double.valueOf(info.substring(posIndex + 5, info.lastIndexOf(")")));
							} catch (Exception ex) {}
							infos = infoArray.get(j - 1).trim().split(" ");
							try {
								total = Double.valueOf(infos[infos.length - 1]);
							} catch (Exception ex) {}
							break;
						}
					}
					
					item = new InvoiceItem();
					item.setName(name);
					item.setDate(date);
					item.setByerId(byerId);
					item.setNumber(num);
					item.setByerName(byerName);
					item.setPrice(price);
					item.setExFee(exFee);
					itemList.add(item);
					totalExFee += exFee;
					totalPrice += total;

					logger.debug("日期:" + formatter.format(date) 
							+ " 宝贝名称:" + name 
							+ " 单价:" + price 
							+ " 数量:" + num 
							+ " 快递费:" + exFee
							+ " 实付:" + total
							+ " 买家ID:" + byerId 
							+ " 买家姓名:" + byerName);
				}

				/*
				int posIndex = info.indexOf("买家：");
				if (posIndex > 0) {
					if (info.indexOf("交易关闭") > -1)
						continue;
					try {
						infos = info.substring(posIndex + 3).split(" ");
						byerId = infos[1];
						byerName = infos[2].equals("----") ? "" : infos[2];
					} catch (Exception ex) {
					}

					info = infoArray.get(i + 2);
					posIndex = info.indexOf("含快递 ：");
					if (posIndex > -1) {
						exFee = Double.valueOf(info.substring(posIndex + 5,
								info.length() - 1));
					}

					info = infoArray.get(i + 1);
					posIndex = info.lastIndexOf("-");
					if (posIndex > -1) {
						infos = info.substring(0, posIndex - 1).trim().split(
								" ");
						if (logger.isDebugEnabled()) {
							logger.debug("info:" + info);
							for (int j = 0; j < infos.length; j++) {
								logger.debug("infos[" + j + "]:" + infos[j]);
							}
						}

						try {
							num = Integer.valueOf(infos[infos.length - 1]);
						} catch (Exception ex) {
						}
						try {
							price = Double.valueOf(infos[infos.length - 2]);
						} catch (Exception ex) {
						}

						StringBuffer nameBuffer = new StringBuffer();
						for (int j = 0; j < infos.length - 2; j++) {
							nameBuffer.append(infos[j]);
							nameBuffer.append(" ");
						}
						name = nameBuffer.toString().trim();

						try {
							total = Double.valueOf(info.substring(posIndex + 1)
									.trim());
						} catch (Exception ex) {
						}
					}

					try {
						info = infoArray.get(i + 3);
						matcher = pattern.matcher(info);
						if (matcher.find()) {
							date = formatter.parse(matcher.group(1));
						}
					} catch (Exception ex) {
					}

					item = new InvoiceItem();
					item.setName(name);
					item.setDate(date);
					item.setByerId(byerId);
					item.setNumber(num);
					item.setByerName(byerName);
					item.setPrice(price);
					item.setExFee(exFee);
					itemList.add(item);
					totalExFee += exFee;
					totalPrice += total;

					logger.debug("日期:" + formatter.format(date) + " 宝贝名称:"
							+ name + " 数量:" + num + " 价格:" + price + " 快递费:"
							+ exFee + " 买家ID:" + byerId + " 买家姓名:" + byerName);
				}
				*/

			}
			logger.debug("运费:" + totalExFee + " 合计:" + totalPrice);

			if (sellId > 0 && item != null) {
				Sell obj = sellService.getSellById(sellId);
				if (obj.getCustomerIM().isEmpty()) {
					obj.setCustomerIM(item.getByerId());
					obj.setCustomerIMType(0);
					// IMType的具体定义在SellService里
				}
				obj.setFee(totalExFee);
				sellService.updateSell(obj);
			}
		} catch (Exception ex) {
			logger.error(ex.toString());
		}

		return SUCCESS;
	}

	public static void main(String[] args) throws Exception {
		BasicConfigurator.configure();
		Logger.getRootLogger().setLevel(Level.DEBUG);

		char[] cbuf = new char[1024];
		StringBuffer buf = new StringBuffer();
		InputStreamReader is = new InputStreamReader(new FileInputStream(
				"D:/content.txt"));
		int size;
		while ((size = is.read(cbuf)) != -1) {
			buf.append(cbuf, 0, size);
		}

		SellItemImportAction action = new SellItemImportAction();
		action.sellContent = buf.toString();
		action.execute();
	}

	public void setSellService(SellService sellService) {
		this.sellService = sellService;
	}

	public String getSellContent() {
		return sellContent;
	}

	public void setSellContent(String sellContent) {
		this.sellContent = sellContent;
	}

	public List<InvoiceItem> getItemList() {
		return itemList;
	}

	public void setItemList(List<InvoiceItem> itemList) {
		this.itemList = itemList;
	}

	public int getSellId() {
		return sellId;
	}

	public void setSellId(int sellId) {
		this.sellId = sellId;
	}

	public void setSellItemService(SellItemService sellItemService) {
		this.sellItemService = sellItemService;
	}

	public void setWareService(WareService wareService) {
		this.wareService = wareService;
	}

	public Sell getSell() {
		return sell;
	}

	public List<SellItem> getSellItemList() {
		return sellItemList;
	}

	public double getTotalPrice() {
		return totalPrice;
	}

	public void setTotalPrice(double totalPrice) {
		this.totalPrice = totalPrice;
	}

	public double getTotalExFee() {
		return totalExFee;
	}

	public void setTotalExFee(double totalExFee) {
		this.totalExFee = totalExFee;
	}

}