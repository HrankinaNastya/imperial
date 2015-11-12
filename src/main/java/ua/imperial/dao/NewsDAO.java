package ua.imperial.dao;

import java.util.List;

import ua.imperial.entities.News;


public interface NewsDAO {
	
	public void addNews(News news);

	public News getNews(Integer id);
	
	public List<News> listNews();
	public List<News> listLastNews();
	public List<News> listNewsfromSubcategory(Integer id);
	
	public void updateNews(News news);

	public void removeNews(Integer id);

}
