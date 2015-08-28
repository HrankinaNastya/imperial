package ua.imperial.dao.impl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import ua.imperial.dao.CategoryDAO;
import ua.imperial.entities.Category;
import ua.imperial.entities.Item;
import ua.imperial.entities.Subcategory;

@Repository
public class CategoryDAOImpl implements CategoryDAO {
	
	//@Autowired
	//ItemService itemService;

	@Autowired
	private SessionFactory sessionFactory;

	public void addCategory(Category category) {
		sessionFactory.getCurrentSession().save(category);
	}

	public void addSubcategory(Subcategory subcategory) {
		sessionFactory.getCurrentSession().save(subcategory);
	}

	public Category getCategory(Integer id) {
		Category category = (Category) sessionFactory.getCurrentSession().get(Category.class, id);    	
		return category;
	}

	public Subcategory getSubcategory(Integer id) {
		Subcategory subcategory = (Subcategory) sessionFactory.getCurrentSession().get(Subcategory.class, id);    	
		return subcategory;
	}

	@SuppressWarnings("unchecked")
	public List<Category> listCategory() {
		return sessionFactory.getCurrentSession().createQuery("from Category")
				.list();
	}

	@SuppressWarnings("unchecked")
	public List<Subcategory> listSubcategory() {
		return sessionFactory.getCurrentSession().createQuery("from Subcategory")
				.list();
	}

	public void updateCategory(Category category) {
		sessionFactory.getCurrentSession().merge(category);	
		sessionFactory.getCurrentSession().flush();
	}
	
	public void updateSubcategory(Subcategory subcategory) {
		sessionFactory.getCurrentSession().merge(subcategory);	
		sessionFactory.getCurrentSession().flush();
	}

	public void removeCategory(Integer id) {
		Category category = (Category) sessionFactory.getCurrentSession().load(
				Category.class, id);
		if (null != category) {
			sessionFactory.getCurrentSession().delete(category);
			sessionFactory.getCurrentSession().flush();
		}
	}
	
	public void removeSubcategory(Integer id) {
		Subcategory subcategory = (Subcategory) sessionFactory.getCurrentSession().load(
				Subcategory.class, id);
		if (null != subcategory) {
			sessionFactory.getCurrentSession().delete(subcategory);
			sessionFactory.getCurrentSession().flush();
		}
	}

}
