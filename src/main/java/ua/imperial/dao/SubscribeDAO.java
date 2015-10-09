package ua.imperial.dao;

import java.util.List;

import ua.imperial.entities.Subscribe;

public interface SubscribeDAO {
	
	public void addSubscribe(Subscribe subscribe);

	public Subscribe getSubscribe(Integer id);
	
	public List<Subscribe> listSubscribe();
	
	public void updateSubscribe(Subscribe subscribe);

	public void removeSubscribe(Integer id);
	

}
