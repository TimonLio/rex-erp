package erp.service;

import java.util.HashMap;
import java.util.Map;

import erp.model.ExpressPos;
import erp.model.ExpressTemplate;

public class ExpressService {

    public Map<Integer, String> getExpressSel() {
        Map<Integer, String> ret = new HashMap<Integer, String>(16);
        ret.put(0, "韵达");
        ret.put(1, "申通");
        ret.put(2, "圆通");
        ret.put(3, "中通");
        ret.put(4, "天天");
        ret.put(5, "顺丰");
        ret.put(6, "CCES");
        ret.put(7, "其他");
        ret.put(-1, "无");
        return ret;
    }

    public ExpressTemplate getExpress(int expressId) {

        ExpressTemplate obj = new ExpressTemplate();

        switch (expressId) {
        default:
        case 0: // 韵达
            obj.setDateFormat("yy   MM   dd");
            obj.setSize(new ExpressPos(658, 360));
            obj.setDate(new ExpressPos(99, 266));           // x:35 y:94
            obj.setSrcPhone(new ExpressPos(85, 159));       // x:30 y:56
            obj.setSrcPostCode(new ExpressPos(241, 159));   // x:85 y:56
            obj.setDstPhone1(new ExpressPos(354, 159));     // x:125 y:56
            obj.setDstPhone2(new ExpressPos(354, 172));     // x:125 y:+13point
            obj.setDstPostCode(new ExpressPos(496, 159));   // x:175 y:56

            obj.setSrcAddressLB(new ExpressPos(57, 170));   // x:20 y:60
            obj.setSrcAddressRT(new ExpressPos(306, 241));  // x:108 y:85
            obj.setSrcName(new ExpressPos(241, 244));       // x:85 y:86

            obj.setDstAddressLB(new ExpressPos(320, 170));  // x:113 y:60
            obj.setDstAddressRT(new ExpressPos(578, 241));  // x:204 y:85
            obj.setDstName(new ExpressPos(510, 244));       // x:180 y:86
            break;

        case 1: // 申通
            obj.setDateFormat("yy MM dd");
            obj.setSize(new ExpressPos(658, 360));
            obj.setDate(new ExpressPos(383, 125));
            obj.setSrcPhone(new ExpressPos(130, 156));
            obj.setSrcPostCode(new ExpressPos(232, 156));
            obj.setDstPhone1(new ExpressPos(357, 156));
            obj.setDstPhone2(new ExpressPos(357, 145));
            obj.setDstPostCode(new ExpressPos(459, 156));

            obj.setSrcAddressLB(new ExpressPos(10, 10));
            obj.setSrcAddressRT(new ExpressPos(10, 10));
            obj.setSrcName(new ExpressPos(241, 179));

            obj.setDstAddressLB(new ExpressPos(10, 10));
            obj.setDstAddressRT(new ExpressPos(10, 10));
            obj.setDstName(new ExpressPos(454, 179));
            break;

        case 2: // 圆通
            obj.setDateFormat("yy   MM   dd");
            obj.setSize(new ExpressPos(658, 360));
            obj.setDate(new ExpressPos(179, 57));           // x:63 y:20
            obj.setSrcPhone(new ExpressPos(71, 136));       // x:25 y:48
            obj.setSrcPostCode(null);
            obj.setDstPhone1(new ExpressPos(275, 94));      // x:97 y:33
            obj.setDstPhone2(new ExpressPos(383, 94));      // x:135 y:33
            obj.setDstPostCode(null);

            obj.setSrcAddressLB(new ExpressPos(51, 153));   // x:18 y:54
            obj.setSrcAddressRT(new ExpressPos(255, 221));  // x:90 y:78
            obj.setSrcName(new ExpressPos(77, 261));        // x:27 y:92

            obj.setDstAddressLB(new ExpressPos(255, 111));  // x:90 y:39
            obj.setDstAddressRT(new ExpressPos(459, 187));  // x:162 y:66
            obj.setDstName(new ExpressPos(289, 232));       // x:102 y:82
            break;

        case 3: // 中通
            obj.setDateFormat("MM   dd");
            obj.setSize(new ExpressPos(658, 360));
            obj.setDate(new ExpressPos(164, 65));
            obj.setSrcPhone(new ExpressPos(147, 159));
            obj.setSrcPostCode(new ExpressPos(269, 159));
            obj.setDstPhone1(new ExpressPos(403, 159));
            obj.setDstPhone2(new ExpressPos(403, 173));
            obj.setDstPostCode(new ExpressPos(524, 159));

            obj.setSrcAddressLB(new ExpressPos(10, 10));
            obj.setSrcAddressRT(new ExpressPos(10, 10));
            obj.setSrcName(new ExpressPos(150, 258));

            obj.setDstAddressLB(new ExpressPos(10, 10));
            obj.setDstAddressRT(new ExpressPos(10, 10));
            obj.setDstName(new ExpressPos(405, 258));
            break;

        case 4: // 天天
            obj.setDateFormat("yyyy-MM-dd");
            obj.setSize(new ExpressPos(658, 360));
            obj.setDate(new ExpressPos(122, 255));
            obj.setSrcPhone(new ExpressPos(116, 218));
            obj.setSrcPostCode(new ExpressPos(258, 153));
            obj.setDstPhone1(new ExpressPos(386, 218));
            obj.setDstPhone2(new ExpressPos(482, 218));
            obj.setDstPostCode(new ExpressPos(527, 153));

            obj.setSrcAddressLB(new ExpressPos(10, 10));
            obj.setSrcAddressRT(new ExpressPos(10, 10));
            obj.setSrcName(new ExpressPos(170, 153));

            obj.setDstAddressLB(new ExpressPos(10, 10));
            obj.setDstAddressRT(new ExpressPos(10, 10));
            obj.setDstName(new ExpressPos(403, 153));
            break;

        case 5: // 顺丰
            obj.setDateFormat("MM    dd");
            obj.setSize(new ExpressPos(615, 397));
            obj.setDate(new ExpressPos(371, 57));
            obj.setSrcPhone(new ExpressPos(266, 190));
            obj.setSrcPostCode(null);
            obj.setDstPhone1(new ExpressPos(527, 190));
            obj.setDstPhone2(new ExpressPos(527, 201));
            obj.setDstPostCode(null);

            obj.setSrcAddressLB(new ExpressPos(10, 10));
            obj.setSrcAddressRT(new ExpressPos(10, 10));
            obj.setSrcName(new ExpressPos(306, 281));

            obj.setDstAddressLB(new ExpressPos(10, 10));
            obj.setDstAddressRT(new ExpressPos(10, 10));
            obj.setDstName(new ExpressPos(581, 281));
            break;
            
        case 6: // CCES
            //obj.setDateFormat("MM    dd");
            obj.setSize(new ExpressPos(658, 360));
            obj.setDate(null);
            obj.setSrcPhone(new ExpressPos(142, 142));
            obj.setSrcPostCode(null);
            obj.setDstPhone1(new ExpressPos(374, 142));
            obj.setDstPhone2(new ExpressPos(374, 155));
            obj.setDstPostCode(null);

            obj.setSrcAddressLB(new ExpressPos(142, 159));
            obj.setSrcAddressRT(new ExpressPos(300, 227));
            obj.setSrcName(new ExpressPos(255, 142));

            obj.setDstAddressLB(new ExpressPos(374, 159));
            obj.setDstAddressRT(new ExpressPos(530, 244));
            obj.setDstName(new ExpressPos(468, 142));
            break;
            
        }
        return obj;
    }
}