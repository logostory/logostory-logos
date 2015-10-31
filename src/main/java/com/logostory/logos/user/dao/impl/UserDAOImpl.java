package com.logostory.logos.user.dao.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.logostory.logos.user.dao.UserDAO;
import com.logostory.logos.user.domain.User;

@Repository
public class UserDAOImpl implements UserDAO {

	private static final Logger logger = LoggerFactory.getLogger(UserDAOImpl.class);
	private static final String MAPPER_NAMESPACE_USER = "logos.user.";
	
	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	
	
	// client ****************************************************************************************************************
	@Override
	public boolean setUserClient(User user) throws Exception {
		
		int result = sqlSessionTemplate.insert(MAPPER_NAMESPACE_USER + "setUserClient", user);
		
		if (result > 0)
			return true;
		else
			return false;
	}
	
	@Override
	public User getUserClient(String clientID) throws Exception {
		
		User resultUserClient = sqlSessionTemplate.selectOne(MAPPER_NAMESPACE_USER + "getUserClient", clientID);
		
		return resultUserClient;
	}
	
	@Override
	public List<User> getUserClientList(User user) throws Exception {
		
		List<User> resultUserClientList = sqlSessionTemplate.selectList(MAPPER_NAMESPACE_USER + "getUserClientList", user );
		
		logger.debug("userClient result : " + resultUserClientList.size());
		
		return resultUserClientList;
	}
	
	@Override
	public boolean updateUserClient(User user) throws Exception {
		
		int result = sqlSessionTemplate.update(MAPPER_NAMESPACE_USER + "updateUserClient", user);
		
		if (result > 0)
			return true;
		else
			return false;
	}
	
	@Override
	public boolean deleteUserClient(String clientID) throws Exception {
		
		int result = sqlSessionTemplate.delete(MAPPER_NAMESPACE_USER + "deleteUserClient", clientID);
		
		if (result > 0)
			return true;
		else
			return false;
	}
	
	
	// manager ****************************************************************************************************************
	
	@Override
	public boolean setUserManager(User user) throws Exception {
		
		int result = sqlSessionTemplate.insert(MAPPER_NAMESPACE_USER + "setUserManager", user);
		
		if (result > 0)
			return true;
		else
			return false;
	}
	
	@Override
	public User getUserManager(String clientID) throws Exception {
		
		User resultUserManager = sqlSessionTemplate.selectOne(MAPPER_NAMESPACE_USER + "getUserManager", clientID);
		
		return resultUserManager;
	}
	
	@Override
	public List<User> getUserManagerList(User user) throws Exception {
		
		List<User> resultUserManagerList = sqlSessionTemplate.selectList(MAPPER_NAMESPACE_USER + "getUserManagerList", user);
		
		logger.debug("userManager result: " + resultUserManagerList.size());
		
		return resultUserManagerList;
	}
	
	@Override
	public boolean updateUserManager(User user) throws Exception {
		
		int result = sqlSessionTemplate.update(MAPPER_NAMESPACE_USER + "updateUserManager", user);
		
		if (result > 0)
			return true;
		else
			return false;
	}
	
	@Override
	public boolean deleteUserManager(String clientID) throws Exception {
		
		int result = sqlSessionTemplate.delete(MAPPER_NAMESPACE_USER + "deleteUserManager", clientID);
		
		if (result > 0)
			return true;
		else
			return false;
	}
}