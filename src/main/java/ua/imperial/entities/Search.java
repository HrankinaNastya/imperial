package ua.imperial.entities;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.apache.commons.lang.StringUtils;


public class Search {
	
	private List<SearchResult> searchResults = new ArrayList<SearchResult>();
	
	public Search() {
		super();
	}
	
	public Search(List<Category> categoryList, List<Subcategory> subcategoryList, 
			List<News> newsList, String searchString) {
		
		String search[] = StringUtils.split(searchString," ");
		boolean bool;
		for (Iterator<Category> iter = categoryList.iterator(); iter.hasNext(); ) {
			 Category category = iter.next();
			 bool = true;
			 for(int i = 0; i < search.length && bool == true; i++){
				 if (category.getName().toUpperCase().contains(search[i].toUpperCase()) || 
						 category.getContent().toUpperCase().contains(search[i].toUpperCase())){
					 searchResults.add(new SearchResult(category));
					 bool = false;
				 }
			 }
	    }
		
		for (Iterator<Subcategory> iter = subcategoryList.iterator(); iter.hasNext(); ) {
			Subcategory subcategory = iter.next();
			bool = true;
			 for(int i = 0; i < search.length && bool == true; i++){
				 if (subcategory.getName().toUpperCase().contains(search[i].toUpperCase()) || 
						 subcategory.getDescription().toUpperCase().contains(search[i].toUpperCase()) 
						 || subcategory.getContent().toUpperCase().contains(search[i].toUpperCase())){
					 searchResults.add(new SearchResult(subcategory));
					 bool = false;
				 }
			 }
	    }
		
		for (Iterator<News> iter = newsList.iterator(); iter.hasNext(); ) {
			News n = iter.next();
			bool = true;
			for(int i = 0; i < search.length && bool == true; i++){
				if (n.getName().toUpperCase().contains(search[i].toUpperCase()) || 
						 n.getDescription().toUpperCase().contains(search[i].toUpperCase()) 
						 || n.getContent().toUpperCase().contains(search[i].toUpperCase())){
					 searchResults.add(new SearchResult(n));
					 bool = false;
				 }
			}
		}
		
	}

	public List<SearchResult> getSearchResults() {
		return searchResults;
	}

	public void setSearchResults(List<SearchResult> searchResults) {
		this.searchResults = searchResults;
	}
	
	
}
