package ua.imperial.entities;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.FetchType;
import javax.persistence.OneToMany;

public class Post {
	
	private Integer id;

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "news")
	private List<News> news = new ArrayList<News>();
	
	private Integer lenght;

	public Post() {
		super();
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public List<News> getNews() {
		return news;
	}

	public void setNews(List<News> news) {
		this.news = news;
	}

	public void addNews(News newsObj) {
		news.add(newsObj);
		setLenght(news.size());
	}

	public Integer getLenght() {
		return lenght;
	}

	public void setLenght(Integer lenght) {
		this.lenght = lenght;
	}
	
	

}
