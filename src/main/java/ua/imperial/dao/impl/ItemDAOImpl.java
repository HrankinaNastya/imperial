package ua.imperial.dao.impl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import ua.imperial.dao.ItemDAO;
import ua.imperial.entities.Category;
import ua.imperial.entities.Item;
import ua.imperial.entities.Subcategory;

@Repository
public class ItemDAOImpl implements ItemDAO {
	
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
	
	public void addItem(Item item) {
		//Category category = tourService.getCategory(item.getCategory().getId());
		//item.setCategory(category);
		//sessionFactory.getCurrentSession().save(item);
	}

	public Category getCategory(Integer id) {
		Category category = (Category) sessionFactory.getCurrentSession().get(Category.class, id);    	
		return category;
	}

	public Subcategory getSubcategory(Integer id) {
		Subcategory subcategory = (Subcategory) sessionFactory.getCurrentSession().get(Subcategory.class, id);    	
		return subcategory;
	}
	
	public Item getItem(Integer id) {
		Item item = (Item) sessionFactory.getCurrentSession().get(Item.class, id);    	
		return item;
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
	
	@SuppressWarnings("unchecked")
	public List<Item> listItem() {
		return sessionFactory.getCurrentSession().createQuery("from Item")
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

	public void updateItem(Item item) {
		//Category category = tourService.getCategory(item.getCategory().getId() );
		//item.setCategory(category);
		//sessionFactory.getCurrentSession().merge(item);	
		//sessionFactory.getCurrentSession().flush();
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

	public void removeItem(Integer id) {
		Item item = (Item) sessionFactory.getCurrentSession().load(
				Item.class, id);
		if (null != item) {
			sessionFactory.getCurrentSession().delete(item);
			sessionFactory.getCurrentSession().flush();
		}
	}

}
