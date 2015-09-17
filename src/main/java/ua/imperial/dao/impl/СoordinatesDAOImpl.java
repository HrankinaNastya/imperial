package ua.imperial.dao.impl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import ua.imperial.dao.FeedbackDAO;
import ua.imperial.dao.—oordinatesDAO;
import ua.imperial.entities.Feedback;
import ua.imperial.entities.—oordinates;

@Repository
public class —oordinatesDAOImpl implements —oordinatesDAO  {
	
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public void add—oordinates(—oordinates coordinates) {
		sessionFactory.getCurrentSession().save(coordinates);
	}

	@Override
	public —oordinates get—oordinates(Integer id) {
		—oordinates coordinates = (—oordinates) sessionFactory.getCurrentSession().get(—oordinates.class, id);    	
		return coordinates;
	}

	@Override
	@SuppressWarnings("unchecked")
	public List<—oordinates> list—oordinates() {
		return sessionFactory.getCurrentSession().createQuery("from —oordinates")
				.list();
	}

	@Override
	public void update—oordinates(—oordinates coordinates) {
		sessionFactory.getCurrentSession().merge(coordinates);	
		sessionFactory.getCurrentSession().flush();
	}

	@Override
	public void remove—oordinates(Integer id) {
		—oordinates coordinates = (—oordinates) sessionFactory.getCurrentSession().load(
				—oordinates.class, id);
		if (null != coordinates) {
			sessionFactory.getCurrentSession().delete(coordinates);
			sessionFactory.getCurrentSession().flush();
		}
	}

}
