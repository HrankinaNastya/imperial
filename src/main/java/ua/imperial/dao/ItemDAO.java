package ua.imperial.dao;

import java.util.List;

import ua.imperial.entities.Category;
import ua.imperial.entities.Item;
import ua.imperial.entities.Subcategory;

public interface ItemDAO {

	public void addCategory(Category category);
	public void addSubcategory(Subcategory subcategory);
	public void addItem(Item item);

	public Category getCategory(Integer id);
	public Subcategory getSubcategory(Integer id);
	public Item getItem(Integer id);
	
	public List<Category> listCategory();
	public List<Subcategory> listSubcategory();
	public List<Item> listItem();
	
	public void updateCategory(Category category);
	public void updateSubcategory(Subcategory subcategory);
	public void updateItem(Item item);

	public void removeCategory(Integer id);
	public void removeSubcategory(Integer id);
	public void removeItem(Integer id);

	
}