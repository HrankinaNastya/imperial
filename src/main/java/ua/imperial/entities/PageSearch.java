package ua.imperial.entities;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class PageSearch {
		
		private Integer pages;
		private Integer lengthOfSearch;
		private Integer count;
		private Integer size;
		private List<Post> posts = new ArrayList<Post>();
		private List<SearchResult> searchResults = new ArrayList<SearchResult>();
		
		public PageSearch(List<SearchResult> searchResults) {
			super();
			this.searchResults = searchResults;
			this.lengthOfSearch = searchResults.size();
			this.count = 0;
			this.size = 2;
			this.pages = 0;
			setPosts();
		}
		
		public Integer getPages() {
			return pages;
		}
		
		public Integer getLengthOfSearch() {
			return lengthOfSearch;
		}

		public void setLengthOfSearch(Integer lengthOfSearch) {
			this.lengthOfSearch = lengthOfSearch;
		}

		public void setLengthOfNews(Integer lengthOfSearch) {
			this.lengthOfSearch = lengthOfSearch;
		}
		
		public Integer getCount() {
			return count;
		}
		
		public void setCount(Integer count) {
			this.count = count;
		}
		
		public Integer getSize() {
			return size;
		}
		
		public void setSize(Integer size) {
			this.size = size;
		}
		
		public List<SearchResult> getSearchResults() {
			return searchResults;
		}

		public void setSearchResults(List<SearchResult> searchResults) {
			this.searchResults = searchResults;
		}

		public List<Post> getPosts() {
			return posts;
		}
		
		public void setPosts() {
			Iterator<SearchResult> iter = searchResults.iterator();
			Post post = new Post();
			
			while(iter.hasNext()){
				if (size == count){
					count = 0;
					post.setId(++pages);
					posts.add(post);
					post = new Post();
				}
				
				post.addSearchResult(iter.next());
				count++;
			}
			if (post != null) {
				post.setId(++pages);
				posts.add(post);
			}
		}
		

		
}
