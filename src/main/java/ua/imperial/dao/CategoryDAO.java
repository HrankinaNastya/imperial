package ua.imperial.dao;

import java.util.List;

import ua.imperial.entities.Category;
import ua.imperial.entities.Subcategory;

public interface CategoryDAO {

	public void addCategory(Category category);
	public void addSubcategory(Subcategory subcategory);

	public Category getCategory(Integer id);
	public Subcategory getSubcategory(Integer id);
	
	public List<Category> listCategory();
	public List<Subcategory> listSubcategory();
	public List<Subcategory> listSubcategoryfromCategory(Integer id);
	
	public void updateCategory(Category category);
	public void updateSubcategory(Subcategory subcategory);

	public void removeCategory(Integer id);
	public void removeSubcategory(Integer id);

	
}