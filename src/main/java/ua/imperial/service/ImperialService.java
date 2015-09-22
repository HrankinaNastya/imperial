package ua.imperial.service;

import java.util.List;

import ua.imperial.entities.Category;
import ua.imperial.entities.Coordinates;
import ua.imperial.entities.Fact;
import ua.imperial.entities.Feedback;
import ua.imperial.entities.News;
import ua.imperial.entities.Section;
import ua.imperial.entities.Subcategory;

public interface ImperialService {

	/*
	 * CategoryDAO
	 */
	
	public void addCategory(Category category);
	public void addSubcategory(Subcategory subcategory);

	public Category getCategory(Integer id);
	public Subcategory getSubcategory(Integer id);
	
	public List<Category> listCategory();
	public List<Subcategory> listSubcategory();
	public List<Subcategory> listSubcategoryfromCategory(Integer id);
	
	public void updateCategory(Category category);
	public void updateSubcategory(Subcategory subcategory);

	public void removeCategory(Integer id);
	public void removeSubcategory(Integer id);
	
	/*
	 * FactDAO
	 */
	
	public void addSection(Section section);
	public void addFact(Fact fact);

	public Section getSection(Integer id);
	public Fact getFact(Integer id);
	
	public List<Section> listSection();
	public List<Fact> listFact();
	public List<Fact> listFactfromSection(Integer id);
	
	public void updateSection(Section section);
	public void updateFact(Fact fact);

	public void removeSection(Integer id);
	public void removeFact(Integer id);
	
	/*
	 * FeedbackDAO
	 */
	
	public void addFeedback(Feedback feedback);

	public Feedback getFeedback(Integer id);
	
	public List<Feedback> listFeedback();
	
	public void updateFeedback(Feedback feedback);

	public void removeFeedback(Integer id);

	
	/*
	 * CoordinatesDAO
	 */
	
	public void addCoordinates(Coordinates Coordinates);

	public Coordinates getCoordinates(Integer id);
	
	public List<Coordinates> listCoordinates();
	
	public void updateCoordinates(Coordinates coordinates);

	public void removeCoordinates(Integer id);
	
	/*
	 * NewsDAO
	 */
	
	public void addNews(News news);

	public News getNews(Integer id);
	
	public List<News> listNews();
	
	public void updateNews(News news);

	public void removeNews(Integer id);
	
}
