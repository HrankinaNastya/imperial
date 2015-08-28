package ua.imperial.service.impl;
 
import java.lang.annotation.Annotation;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import ua.imperial.dao.CategoryDAO;
import ua.imperial.entities.Category;
import ua.imperial.entities.Item;
import ua.imperial.entities.Subcategory;
import ua.imperial.service.ImperialService;

 
@Service
public class ImperialServiceImpl implements ImperialService {
 
    @Autowired
    private CategoryDAO categoryDAO;

    @Transactional
	public void addCategory(Category category) {
		categoryDAO.addCategory(category);
	}
    
    @Transactional
   	public void addSubcategory(Subcategory subcategory) {
   		categoryDAO.addSubcategory(subcategory);
   	}

    @Transactional
	public Category getCategory(Integer id) {
		return categoryDAO.getCategory(id);
	}
    
    @Transactional
	public Subcategory getSubcategory(Integer id) {
		return categoryDAO.getSubcategory(id);
	}

    @Transactional
	public List<Category> listCategory() {
		return categoryDAO.listCategory();
	}
    
    @Transactional
	public List<Subcategory> listSubcategory() {
		return categoryDAO.listSubcategory();
	}
    
    @Transactional
	public void updateCategory(Category category) {
		categoryDAO.updateCategory(category);
	}
    
    @Transactional
	public void updateSubcategory(Subcategory subcategory) {
		categoryDAO.updateSubcategory(subcategory);
	}

    @Transactional
	public void removeCategory(Integer id) {
		categoryDAO.removeCategory(id);
	}
    
    @Transactional
	public void removeSubcategory(Integer id) {
		categoryDAO.removeSubcategory(id);
	}


}
