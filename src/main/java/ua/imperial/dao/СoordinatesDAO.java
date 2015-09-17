package ua.imperial.dao;

import java.util.List;

import ua.imperial.entities.—oordinates;

public interface —oordinatesDAO {
	
	public void add—oordinates(—oordinates coordinates);

	public —oordinates get—oordinates(Integer id);
	
	public List<—oordinates> list—oordinates();
	
	public void update—oordinates(—oordinates coordinates);

	public void remove—oordinates(Integer id);
	

}
