package usersession.dao;

import java.util.ArrayList;

import usersession.model.User;


public interface UserDAO {
	//create
		public void create(User user);
		// Read
		public User getById(int id);
		// Update
		public void update(User user);
		// Delete
		public void deleteById(int id);
		// Get All
		public ArrayList<User> getAll();
		//login check
		public User loginCheck(String email,String password);
}
