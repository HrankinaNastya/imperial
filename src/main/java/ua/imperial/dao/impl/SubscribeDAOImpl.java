package ua.imperial.dao.impl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import ua.imperial.dao.SubscribeDAO;
import ua.imperial.entities.Subscribe;

@Repository
public class SubscribeDAOImpl implements SubscribeDAO  {
	
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public void addSubscribe(Subscribe subscribe) {
		sessionFactory.getCurrentSession().save(subscribe);
	}

	@Override
	public Subscribe getSubscribe(Integer id) {
		Subscribe subscribe = (Subscribe) sessionFactory.getCurrentSession().get(Subscribe.class, id);    	
		return subscribe;
	}

	@Override
	@SuppressWarnings("unchecked")
	public List<Subscribe> listSubscribe() {
		return sessionFactory.getCurrentSession().createQuery("from Subscribe")
				.list();
	}

	@Override
	public void updateSubscribe(Subscribe subscribe) {
		sessionFactory.getCurrentSession().merge(subscribe);	
		sessionFactory.getCurrentSession().flush();
	}

	@Override
	public void removeSubscribe(Integer id) {
		Subscribe subscribe = (Subscribe) sessionFactory.getCurrentSession().load(
				Subscribe.class, id);
		if (null != subscribe) {
			sessionFactory.getCurrentSession().delete(subscribe);
			sessionFactory.getCurrentSession().flush();
		}
	}

}
