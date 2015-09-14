package ua.imperial.dao;

import java.util.List;

import ua.imperial.entities.Feedback;

public interface FeedbackDAO {
	
	public void addFeedback(Feedback feedback);

	public Feedback getFeedback(Integer id);
	
	public List<Feedback> listFeedback();
	
	public void updateFeedback(Feedback feedback);

	public void removeFeedback(Integer id);
	
}
