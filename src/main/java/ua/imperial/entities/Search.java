package ua.imperial.entities;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.persistence.FetchType;
import javax.persistence.OneToMany;

public class Search {
	
	@OneToMany(fetch = FetchType.LAZY, mappedBy = "category")
	private List<Category> categories = new ArrayList<Category>();
	
	@OneToMany(fetch = FetchType.LAZY, mappedBy = "subcategory")
	private List<Subcategory> subcategories = new ArrayList<Subcategory>();
	
	@OneToMany(fetch = FetchType.LAZY, mappedBy = "news")
	private List<News> news = new ArrayList<News>();
	
	public Search() {
		super();
	}

	public Search(List<Category> categories, List<Subcategory> subcategories,
			List<News> news) {
		super();
		this.categories = categories;
		this.subcategories = subcategories;
		this.news = news;
	}

	public List<Category> getCategories() {
		return categories;
	}

	public void setCategories(List<Category> categories) {
		this.categories = categories;
	}

	public List<Subcategory> getSubcategories() {
		return subcategories;
	}

	public void setSubcategories(List<Subcategory> subcategories) {
		this.subcategories = subcategories;
	}

	public List<News> getNews() {
		return news;
	}

	public void setNews(List<News> news) {
		this.news = news;
	}

	public void addCategory(Category category) {
		categories.add(category);
	}
	
	public void addSubcategory(Subcategory subcategory) {
		subcategories.add(subcategory);
	}
	
	public void addNews(News n) {
		news.add(n);
	}
	
	public void search(List<Category> categoryList, List<Subcategory> subcategoryList, 
			List<News> newsList, String searchString){
		
		Category category = new Category();
		for (Iterator<Category> iter = categoryList.iterator(); iter.hasNext(); ) {
			 category = iter.next();
			 System.out.print(category.getName());
			 if (category.getName().contains(searchString) || category.getContent().contains(searchString)){
	            addCategory(category);
			 }
	    }
		
		Subcategory subcategory = new Subcategory();
		for (Iterator<Subcategory> iter = subcategoryList.iterator(); iter.hasNext(); ) {
			 subcategory = iter.next();
			 System.out.print(subcategory.getName());
			 if (subcategory.getName().contains(searchString) || subcategory.getDescription().contains(searchString) 
					 || subcategory.getContent().contains(searchString)){
	            addSubcategory(subcategory);
			 }
	    }
		
		News n = new News();
		for (Iterator<News> iter = newsList.iterator(); iter.hasNext(); ) {
			 n = iter.next();
			 System.out.print(n.getName());
			 if (n.getName().contains(searchString) || n.getDescription().contains(searchString) 
					 || n.getContent().contains(searchString)){
	            addNews(n);
			 }
	    }
		
	}
	
}
