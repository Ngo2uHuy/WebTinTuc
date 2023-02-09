package com.laptrinh.dao.impl;

import java.util.List;

import org.apache.commons.lang.StringUtils;

import com.laptrinh.dao.INewDAO;
import com.laptrinh.mapper.NewMapper;
import com.laptrinh.model.NewModel;
import com.laptrinh.paging.Pageble;

public class NewDAO extends AbstractDAO<NewModel> implements INewDAO {

	@Override
	public List<NewModel> findByCategoryId(Long categoryId) {
		String sql = "SELECT * FROM news WHERE categoryid=?";
		return query(sql, new NewMapper(), categoryId);
	}

	@Override
	public Long save(NewModel newModel) {
		StringBuilder sql = new StringBuilder(
				"insert into news(title,thumbnail,shortdescription,content,categoryid,createddate,createdby) ");
		sql.append("values(?,?,?,?,?,?,?)");
		return insert(sql.toString(), newModel.getTitle(), newModel.getThumbnail(), newModel.getShortDescription(),
				newModel.getContent(), newModel.getCategoryId(), newModel.getCreatedDate(), newModel.getCreatedBy());
	}

	@Override
	public NewModel findOne(Long id) {
		String sql = "SELECT * FROM news WHERE id = ?"; 
		List<NewModel> news = query(sql, new NewMapper(), id);
		return news.isEmpty()?null: news.get(0);
	}
	@Override
	public void update(NewModel updateNew) {
		StringBuilder sql = new StringBuilder("update news set title=?, thumbnail=?,");
		sql.append(" shortdescription=?, content=?, categoryid=?,");
		sql.append(" createddate=?, createdby=?, modifieddate=?, modifiedby=? where id=?");
		update(sql.toString(), updateNew.getTitle(), updateNew.getThumbnail(), updateNew.getShortDescription(),
				updateNew.getContent(), updateNew.getCategoryId(), updateNew.getCreatedDate(), updateNew.getCreatedBy(),
				updateNew.getModifiedDate(), updateNew.getModifiedBy(), updateNew.getId());
	}

	@Override
	public void delete(long id) {
		String sql = "DELETE FROM news WHERE id=?";
		update(sql, id);
	}

	@Override
	public List<NewModel> findAll(Pageble pageble) {
		StringBuilder sql=new StringBuilder("select * from news");
		if(pageble.getSorter()!=null && StringUtils.isNotBlank(pageble.getSorter().getSortName()) && StringUtils.isNotBlank(pageble.getSorter().getSortBy())) {
			sql.append(" ORDER BY "+pageble.getSorter().getSortName()+" "+pageble.getSorter().getSortBy()+" ");
		}
		if(pageble.getOffset()!=null && pageble.getLimit()!=null ) {
			sql.append(" LIMIT "+pageble.getOffset()+", "+pageble.getLimit()+"");
		}
		return query(sql.toString(),new NewMapper());
	}

	@Override
	public int getTotalItem() {
		String sql="select count(*) from news";
		return count(sql);
	}

}
