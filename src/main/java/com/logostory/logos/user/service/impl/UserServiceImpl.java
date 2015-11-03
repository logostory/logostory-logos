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
	
	@Override
	public User getUserClient(String clientID) throws Exception {
		return userDAO.getUserClient(clientID);
	}
	
	@Override
	public List<User> getUserClientList(User user) throws Exception {
		return userDAO.getUserClientList(user);
	}
	
	@Override
	public boolean updateUserClient(User user) throws Exception {
		return userDAO.updateUserClient(user);
	}
	
	@Override
	public boolean deleteUserClient(String clientID) throws Exception {
		return userDAO.deleteUserClient(clientID);
	}
	
	// manager
	@Override
	public boolean setUserManager(User user) throws Exception {
		return userDAO.setUserManager(user);
	}
	
	@Override
	public User getUserManager(String clientID) throws Exception {
		return userDAO.getUserManager(clientID);
	}
	
	@Override
	public List<User> getUserManagerList(User user) throws Exception {
		return userDAO.getUserManagerList(user);
	}
	
	@Override
	public boolean updateUserManager(User user) throws Exception {
		return userDAO.updateUserManager(user);
	}
	
	@Override
	public boolean deleteUserManager(String clientID) throws Exception {
		return userDAO.deleteUserManager(clientID);
	}
}