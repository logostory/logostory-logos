package com.logostory.logos.user.dao;

import java.util.List;
import com.logostory.logos.user.domain.User;

public interface UserDAO {
	
	// client
	public boolean setUserClient(User user) throws Exception;
	public User getUserClient(String clientID) throws Exception;
	public List<User> getUserClientInfo(String clientID) throws Exception;
	public List<User> getUserClientList(User user) throws Exception;
	public boolean updateUserClient(User user) throws Exception;
	public boolean deleteUserClient(String clientID) throws Exception;
	
	// manager
	public boolean setUserManager(User user) throws Exception;
	public User getUserManager(String managerID) throws Exception;
	public List<User> getUserManagerList(User user) throws Exception;
	public boolean updateUserManager(User user) throws Exception;
	public boolean deleteUserManager(String managerID) throws Exception;

}
