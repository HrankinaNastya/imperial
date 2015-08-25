package ua.imperial.service.impl;
 
import java.lang.annotation.Annotation;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import ua.imperial.dao.ItemDAO;
import ua.imperial.entities.Category;
import ua.imperial.entities.Item;
import ua.imperial.entities.Subcategory;
import ua.imperial.service.ImperialService;

 
@Service
public class ImperialServiceImpl implements ImperialService {
 
    @Autowired
    private ItemDAO itemDAO;

    @Transactional
	public void addCategory(Category category) {
		itemDAO.addCategory(category);
	}
    
    @Transactional
   	public void addSubcategory(Subcategory subcategory) {
   		itemDAO.addSubcategory(subcategory);
   	}

    @Transactional
	public void addItem(Item item) {
		itemDAO.addItem(item);
	}

    @Transactional
	public Category getCategory(Integer id) {
		return itemDAO.getCategory(id);
	}
    
    @Transactional
	public Subcategory getSubcategory(Integer id) {
		return itemDAO.getSubcategory(id);
	}

    @Transactional
	public Item getItem(Integer id) {
		return itemDAO.getItem(id);
	}

    @Transactional
	public List<Category> listCategory() {
		return itemDAO.listCategory();
	}
    
    @Transactional
	public List<Subcategory> listSubcategory() {
		return itemDAO.listSubcategory();
	}

    @Transactional
	public List<Item> listItem() {
		return itemDAO.listItem();
	}

    @Transactional
	public void updateCategory(Category category) {
		itemDAO.updateCategory(category);
	}
    
    @Transactional
	public void updateSubcategory(Subcategory subcategory) {
		itemDAO.updateSubcategory(subcategory);
	}

    @Transactional
	public void updateItem(Item item) {
		itemDAO.updateItem(item);
	}

    @Transactional
	public void removeCategory(Integer id) {
		itemDAO.removeCategory(id);
	}
    
    @Transactional
	public void removeSubcategory(Integer id) {
		itemDAO.removeSubcategory(id);
	}

    @Transactional
	public void removeItem(Integer id) {
		itemDAO.removeItem(id);
	}


}
