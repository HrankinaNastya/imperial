package ua.imperial.dao;

import java.util.List;

import ua.imperial.entities.User;


public interface UserDAO {
	
	public void addUser(User user);

	public User getUser(Integer id);
	
	public List<User> listUser();
	
	public void updateUser(User user);

	public void removeUser(Integer id);

}
