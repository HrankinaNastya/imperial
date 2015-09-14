package ua.imperial.dao.impl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import ua.imperial.dao.FeedbackDAO;
import ua.imperial.entities.Feedback;

@Repository
public class FeedbackDAOImpl implements FeedbackDAO {
	
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public void addFeedback(Feedback feedback) {
		sessionFactory.getCurrentSession().save(feedback);
	}

	@Override
	public Feedback getFeedback(Integer id) {
		Feedback feedback = (Feedback) sessionFactory.getCurrentSession().get(Feedback.class, id);    	
		return feedback;
	}

	@Override
	@SuppressWarnings("unchecked")
	public List<Feedback> listFeedback() {
		return sessionFactory.getCurrentSession().createQuery("from Feedback")
				.list();
	}

	@Override
	public void updateFeedback(Feedback feedback) {
		sessionFactory.getCurrentSession().merge(feedback);	
		sessionFactory.getCurrentSession().flush();
	}

	@Override
	public void removeFeedback(Integer id) {
		Feedback feedback = (Feedback) sessionFactory.getCurrentSession().load(
				Feedback.class, id);
		if (null != feedback) {
			sessionFactory.getCurrentSession().delete(feedback);
			sessionFactory.getCurrentSession().flush();
		}
	}

}
