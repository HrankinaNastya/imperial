package ua.imperial.dao.impl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import ua.imperial.dao.CoordinatesDAO;
import ua.imperial.entities.Coordinates;

@Repository
public class CoordinatesDAOImpl implements CoordinatesDAO  {
	
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public void addCoordinates(Coordinates coordinates) {
		sessionFactory.getCurrentSession().save(coordinates);
	}

	@Override
	public Coordinates getCoordinates(Integer id) {
		Coordinates coordinates = (Coordinates) sessionFactory.getCurrentSession().get(Coordinates.class, id);    	
		return coordinates;
	}

	@Override
	@SuppressWarnings("unchecked")
	public List<Coordinates> listCoordinates() {
		return sessionFactory.getCurrentSession().createQuery("from Coordinates")
				.list();
	}

	@Override
	public void updateCoordinates(Coordinates coordinates) {
		sessionFactory.getCurrentSession().merge(coordinates);	
		sessionFactory.getCurrentSession().flush();
	}

	@Override
	public void removeCoordinates(Integer id) {
		Coordinates coordinates = (Coordinates) sessionFactory.getCurrentSession().load(
				Coordinates.class, id);
		if (null != coordinates) {
			sessionFactory.getCurrentSession().delete(coordinates);
			sessionFactory.getCurrentSession().flush();
		}
	}

}
