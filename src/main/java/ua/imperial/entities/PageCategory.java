package ua.imperial.entities;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.persistence.FetchType;
import javax.persistence.OneToMany;

public class PageCategory {
		
		private Integer pages;
		private Integer lengthOfCategory;
		private Integer count;
		private Integer size;
		private List<Post> posts = new ArrayList<Post>();
		
		@OneToMany(fetch = FetchType.LAZY, mappedBy = "category")
		private List<Category> categories = new ArrayList<Category>();
		
		public PageCategory(List<Category> categories) {
			super();
			this.categories = categories;
			this.lengthOfCategory = categories.size();
			this.count = 0;
			this.size = 2;
			this.pages = 0;
			setPosts();
		}
		
		public Integer getPages() {
			return pages;
		}

		public Integer getLengthOfCategory() {
			return lengthOfCategory;
		}

		public void setLengthOfCategory(Integer lengthOfCategory) {
			this.lengthOfCategory = lengthOfCategory;
		}

		public List<Category> getCategories() {
			return categories;
		}

		public void setCategories(List<Category> categories) {
			this.categories = categories;
		}

		public void setPages(Integer pages) {
			this.pages = pages;
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
		

		public List<Post> getPosts() {
			return posts;
		}
		
		public void setPosts() {
			Iterator<Category> iter = categories.iterator();
			Post post = new Post();
			
			while(iter.hasNext()){
				if (size == count){
					count = 0;
					post.setId(++pages);
					posts.add(post);
					post = new Post();
				}
				
				post.addCategory(iter.next());
				count++;
			}
			if (post != null) {
				post.setId(++pages);
				posts.add(post);
			}
		}
		

		
}
