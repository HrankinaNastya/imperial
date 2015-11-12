package ua.imperial.dao.impl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import ua.imperial.dao.NewsDAO;
import ua.imperial.entities.News;
import ua.imperial.entities.Subcategory;
import ua.imperial.service.ImperialService;

@Repository
public class NewsDAOImpl implements NewsDAO {
	
	@Autowired
	private SessionFactory sessionFactory;
	
	@Autowired
	ImperialService imperialService;

	@Override
	public void addNews(News news) {
		Subcategory subcategory = imperialService.getSubcategory(news.getSubcategory().getId());
		news.setSubcategory(subcategory);
		sessionFactory.getCurrentSession().save(news);
	}

	@Override
	public News getNews(Integer id) {
		News news = (News) sessionFactory.getCurrentSession().get(News.class, id);    	
		return news;
	}

	@Override
	@SuppressWarnings("unchecked")
	public List<News> listNews() {
		return sessionFactory.getCurrentSession().createQuery("from News")
				.list();
	}
	
	@Override
	@SuppressWarnings("unchecked")
	public List<News> listLastNews(){
		return sessionFactory.getCurrentSession().createQuery("from News ORDER BY created DESC limit 5")
				.list();
	}
	
	@Override
	@SuppressWarnings("unchecked")
	public List<News> listNewsfromSubcategory(Integer id) {
		return sessionFactory.getCurrentSession().createQuery("from News where subcategory.id =" + id)
				.list();
	}

	@Override
	public void updateNews(News news) {
		Subcategory subcategory = imperialService.getSubcategory(news.getSubcategory().getId());
		news.setSubcategory(subcategory);
		sessionFactory.getCurrentSession().merge(news);	
		sessionFactory.getCurrentSession().flush();
	}

	@Override
	public void removeNews(Integer id) {
		News news = (News) sessionFactory.getCurrentSession().load(
				News.class, id);
		if (null != news) {
			sessionFactory.getCurrentSession().delete(news);
			sessionFactory.getCurrentSession().flush();
		}
	}

}
