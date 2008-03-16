package rax.dao;

import java.util.List;

import rax.model.ArticleCategory;

public interface ArticleCategoryDao extends GenericDao<ArticleCategory, Long> {

    @Override
    public long count();

    public long countByCategoryId(Long id);

    @Override
    public Long create(ArticleCategory newInstance);

    @Override
    public boolean delete(ArticleCategory persistentObject);

    public boolean deleteByCategoryId(Long id);

    @Override
    public List<ArticleCategory> list(int index, int num);

    public List<ArticleCategory> listByCategoryId(Long id, int index, int num);

    @Override
    public List<ArticleCategory> listAll();

    public List<ArticleCategory> listAllByCategoryId(Long id);

    public List<ArticleCategory> listAllSubCategoryByCategoryId(Long id);

    @Override
    public ArticleCategory read(Long id);

    @Override
    public boolean update(ArticleCategory transientObject);

}