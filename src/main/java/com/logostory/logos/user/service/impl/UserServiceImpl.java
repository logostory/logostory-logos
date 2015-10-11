package com.logostory.logos.user.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.logostory.logos.user.dao.UserDAO;
import com.logostory.logos.user.domain.User;
import com.logostory.logos.user.service.UserService;

@Service
public class UserServiceImpl implements UserService {

	@Autowired
	UserDAO userDAO;
	
	//client
	@Override
	public boolean setUserClient(User user) throws Exception {
		return userDAO.setUserClient(user);
	}
	
	public User getUserClient(String clientID) throws Exception {
		return userDAO.getUserClient(clientID);
	}
	
	public List<User> getUserClientInfo(String clientID) throws Exception {
		return userDAO.getUserClientInfo(clientID);
	}
	
	public List<User> getUserClientList(User user) throws Exception {
		return userDAO.getUserClientList(user);
	}
	
	public boolean updateUserClient(User user) throws Exception {
		return userDAO.updateUserClient(user);
	}
	
	public boolean deleteUserClient(String clientID) throws Exception {
		return userDAO.deleteUserClient(clientID);
	}
	
	// manager
	public boolean setUserManager(User user) throws Exception {
		return userDAO.setUserManager(user);
	}
	
	public User getUserManager(String managerID) throws Exception {
		return userDAO.getUserManager(managerID);
	}
	
	public List<User> getUserManagerList(User user) throws Exception {
		return userDAO.getUserManagerList(user);
	}
	
	public boolean updateUserManager(User user) throws Exception {
		return userDAO.updateUserManager(user);
	}
	
	public boolean deleteUserManager(String managerID) throws Exception {
		return userDAO.deleteUserManager(managerID);
	}
}