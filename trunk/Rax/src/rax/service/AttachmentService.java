package rax.service;

import java.util.List;

import rax.dao.AttachmentDao;
import rax.model.Article;
import rax.model.Attachment;

public class AttachmentService {

    private AttachmentDao attachmentDao;

    public AttachmentService() {
    }

    public void setAttachmentDao(AttachmentDao attachmentDao) {
        this.attachmentDao = attachmentDao;
    }

    public int createAttachment(Attachment attachment) {
        return attachmentDao.create(attachment);
    }

    public boolean deleteAttachment(int id) {
        Attachment attachment = attachmentDao.read(id);
        if (null != attachment) attachmentDao.delete(attachment);
        return true;
    }

    public boolean updateAttachment(int id, Attachment attachment) {
        attachmentDao.update(attachment);
        return true;
    }

    public int getCount() {
        return attachmentDao.count();
    }

    public List<Attachment> listAttachmentsByArticle(Article article) {
        return attachmentDao.listByArticleId(article.getId());
    }

}
