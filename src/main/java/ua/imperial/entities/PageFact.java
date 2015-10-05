package ua.imperial.entities;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.persistence.FetchType;
import javax.persistence.OneToMany;

public class PageFact {
		
		private Integer pages;
		private Integer lengthOfFact;
		private Integer count;
		private Integer size;
		private List<Post> posts = new ArrayList<Post>();
		private List<Fact> facts = new ArrayList<Fact>();
		
		public PageFact(List<Fact> facts) {
			super();
			this.facts = facts;
			this.lengthOfFact = facts.size();
			this.count = 0;
			this.size = 2;
			this.pages = 0;
			setPosts();
		}
		
		public Integer getPages() {
			return pages;
		}
		
		public Integer getLengthOfFact() {
			return lengthOfFact;
		}

		public void setLengthOfFact(Integer lengthOfFact) {
			this.lengthOfFact = lengthOfFact;
		}

		public List<Fact> getFacts() {
			return facts;
		}

		public void setFacts(List<Fact> facts) {
			this.facts = facts;
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
			Iterator<Fact> iter = facts.iterator();
			Post post = new Post();
			
			while(iter.hasNext()){
				if (size == count){
					count = 0;
					post.setId(++pages);
					posts.add(post);
					post = new Post();
				}
				
				post.addFact(iter.next());
				count++;
			}
			if (post != null) {
				post.setId(++pages);
				posts.add(post);
			}
		}
		

		
}
