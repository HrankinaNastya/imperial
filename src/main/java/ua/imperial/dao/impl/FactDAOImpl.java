package ua.imperial.dao.impl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import ua.imperial.dao.FactDAO;
import ua.imperial.entities.Fact;
import ua.imperial.entities.Section;
import ua.imperial.service.ImperialService;

@Repository
public class FactDAOImpl implements FactDAO {
	
	@Autowired
	private SessionFactory sessionFactory;
	
	@Autowired
	ImperialService imperialService;

	@Override
	public void addSection(Section section) {
		sessionFactory.getCurrentSession().save(section);
	}

	@Override
	public void addFact(Fact fact) {
		Section section = imperialService.getSection(fact.getSection().getId());
		fact.setSection(section);
		
		sessionFactory.getCurrentSession().save(fact);
	}

	@Override
	public Section getSection(Integer id) {
		Section section = (Section) sessionFactory.getCurrentSession().get(Section.class, id);    	
		return section;
	}

	@Override
	public Fact getFact(Integer id) {
		Fact fact = (Fact) sessionFactory.getCurrentSession().get(Fact.class, id);    	
		return fact;
	}

	@Override
	@SuppressWarnings("unchecked")
	public List<Section> listSection() {
		return sessionFactory.getCurrentSession().createQuery("from Section")
				.list();
	}

	@Override
	@SuppressWarnings("unchecked")
	public List<Fact> listFact() {
		return sessionFactory.getCurrentSession().createQuery("from Fact")
				.list();
	}

	@Override
	public void updateSection(Section section) {
		sessionFactory.getCurrentSession().merge(section);	
		sessionFactory.getCurrentSession().flush();
	}

	@Override
	public void updateFact(Fact fact) {
		Section section = imperialService.getSection(fact.getSection().getId());
		fact.setSection(section);
		
		sessionFactory.getCurrentSession().merge(fact);	
		sessionFactory.getCurrentSession().flush();
	}

	@Override
	public void removeSection(Integer id) {
		Section section = (Section) sessionFactory.getCurrentSession().load(
				Section.class, id);
		if (null != section) {
			sessionFactory.getCurrentSession().delete(section);
			sessionFactory.getCurrentSession().flush();
		}
	}

	@Override
	public void removeFact(Integer id) {
		Fact fact = (Fact) sessionFactory.getCurrentSession().load(
				Fact.class, id);
		if (null != fact) {
			sessionFactory.getCurrentSession().delete(fact);
			sessionFactory.getCurrentSession().flush();
		}
	}

}
