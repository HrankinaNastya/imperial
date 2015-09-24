package ua.imperial.entities;

import java.util.ArrayList;
import java.util.List;
import java.util.Iterator;

import javax.persistence.FetchType;
import javax.persistence.OneToMany;

public class Page {
	
	private Integer pages;
	private Integer lengthOfNews;
	private Integer count;
	private Integer size;
	private List<Post> posts = new ArrayList<Post>();
	
	@OneToMany(fetch = FetchType.LAZY, mappedBy = "news")
	private List<News> news = new ArrayList<News>();
	
	
	public Page(List<News> news) {
		super();
		this.news = news;
		this.lengthOfNews = news.size();
		this.count = 0;
		this.size = 2;
		pages = 1;
		setPosts();
	}

	public Integer getPages() {
		return pages;
	}
	
	public void setPages(Integer pages) {
		this.pages = pages;
	}
	
	public Integer getLengthOfNews() {
		return lengthOfNews;
	}
	
	public void setLengthOfNews(Integer lengthOfNews) {
		this.lengthOfNews = lengthOfNews;
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
	
	public List<News> getNews() {
		return news;
	}
	
	public void setNews(List<News> news) {
		this.news = news;
	}
	
	public List<Post> getPosts() {
		return posts;
	}
	
	public void setPosts() {
		Iterator<News> iter = news.iterator();
		Post post = new Post();
		
		while(iter.hasNext()){
			if (size == count){
				count = 0;
				posts.add(post);
				post = new Post();
			}
			
			post.addNews(iter.next());
			count++;
			//System.out.println(post.getNews().get(count));
		}
		if (post != null) posts.add(post);
	}
	

	
}
