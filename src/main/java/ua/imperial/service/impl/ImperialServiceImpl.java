package ua.imperial.service.impl;
 
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import ua.imperial.dao.CategoryDAO;
import ua.imperial.dao.FactDAO;
import ua.imperial.dao.FeedbackDAO;
import ua.imperial.dao.�oordinatesDAO;
import ua.imperial.entities.Category;
import ua.imperial.entities.Fact;
import ua.imperial.entities.Feedback;
import ua.imperial.entities.Section;
import ua.imperial.entities.Subcategory;
import ua.imperial.entities.�oordinates;
import ua.imperial.service.ImperialService;

 
@Service
public class ImperialServiceImpl implements ImperialService {
 
    @Autowired
    private CategoryDAO categoryDAO;
    
    @Autowired
    private FactDAO factDAO;
    
    @Autowired
    private FeedbackDAO feedbackDAO;
    
    @Autowired
    private �oordinatesDAO coordinatesDAO;

    
    /*
	 * CategoryDAO
	 */
    
    @Override
    @Transactional
	public void addCategory(Category category) {
		categoryDAO.addCategory(category);
	}
    
    @Override
    @Transactional
   	public void addSubcategory(Subcategory subcategory) {
   		categoryDAO.addSubcategory(subcategory);
   	}

    @Override
    @Transactional
	public Category getCategory(Integer id) {
		return categoryDAO.getCategory(id);
	}
    
    @Override
    @Transactional
	public Subcategory getSubcategory(Integer id) {
		return categoryDAO.getSubcategory(id);
	}

    @Transactional
	public List<Category> listCategory() {
		return categoryDAO.listCategory();
	}
    
    @Override
    @Transactional
	public List<Subcategory> listSubcategory() {
		return categoryDAO.listSubcategory();
	}
    
    @Override
    @Transactional
	public void updateCategory(Category category) {
		categoryDAO.updateCategory(category);
	}
    
    @Override
    @Transactional
	public void updateSubcategory(Subcategory subcategory) {
		categoryDAO.updateSubcategory(subcategory);
	}

    @Override
    @Transactional
	public void removeCategory(Integer id) {
		categoryDAO.removeCategory(id);
	}
    
    @Override
    @Transactional
	public void removeSubcategory(Integer id) {
		categoryDAO.removeSubcategory(id);
	}
    
    /*
	 * FactDAO
	 */
    
	@Override
	@Transactional
	public void addSection(Section section) {
		factDAO.addSection(section);
	}

	@Override
	@Transactional
	public void addFact(Fact fact) {
		factDAO.addFact(fact);
	}

	@Override
	@Transactional
	public Section getSection(Integer id) {
		return factDAO.getSection(id);
	}

	@Override
	@Transactional
	public Fact getFact(Integer id) {
		return factDAO.getFact(id);
	}

	@Override
	@Transactional
	public List<Section> listSection() {
		return factDAO.listSection();
	}

	@Override
	@Transactional
	public List<Fact> listFact() {
		return factDAO.listFact();
	}

	@Override
	@Transactional
	public void updateSection(Section section) {
		factDAO.updateSection(section);
	}

	@Override
	@Transactional
	public void updateFact(Fact fact) {
		factDAO.updateFact(fact);
	}

	@Override
	@Transactional
	public void removeSection(Integer id) {
		factDAO.removeSection(id);
	}

	@Override
	@Transactional
	public void removeFact(Integer id) {
		factDAO.removeFact(id);
	}

	/*
	 * FeedbackDAO
	 */
	
	@Override
	@Transactional
	public void addFeedback(Feedback feedback) {
		feedbackDAO.addFeedback(feedback);
	}

	@Override
	@Transactional
	public Feedback getFeedback(Integer id) {
		return feedbackDAO.getFeedback(id);
	}

	@Override
	@Transactional
	public List<Feedback> listFeedback() {
		return feedbackDAO.listFeedback();
	}

	@Override
	@Transactional
	public void updateFeedback(Feedback feedback) {
		feedbackDAO.updateFeedback(feedback);
	}

	@Override
	@Transactional
	public void removeFeedback(Integer id) {
		feedbackDAO.removeFeedback(id);
	}

	/*
	 * �oordinatesDAO
	 */
	
	@Override
	@Transactional
	public void add�oordinates(�oordinates coordinates) {
		coordinatesDAO.add�oordinates(coordinates);
	}

	@Override
	@Transactional
	public �oordinates get�oordinates(Integer id) {
		return coordinatesDAO.get�oordinates(id);
	}

	@Override
	@Transactional
	public List<�oordinates> list�oordinates() {
		return coordinatesDAO.list�oordinates();
	}

	@Override
	@Transactional
	public void update�oordinates(�oordinates coordinates) {
		coordinatesDAO.update�oordinates(coordinates);
	}

	@Override
	@Transactional
	public void remove�oordinates(Integer id) {
		coordinatesDAO.remove�oordinates(id);
	}


}
