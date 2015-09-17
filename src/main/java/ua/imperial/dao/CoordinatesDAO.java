package ua.imperial.dao;

import java.util.List;

import ua.imperial.entities.Coordinates;

public interface CoordinatesDAO {
	
	public void addCoordinates(Coordinates Coordinates);

	public Coordinates getCoordinates(Integer id);
	
	public List<Coordinates> listCoordinates();
	
	public void updateCoordinates(Coordinates coordinates);

	public void removeCoordinates(Integer id);
	

}
