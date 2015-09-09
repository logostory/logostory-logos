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
public class UserDAOImpl {
	
	private static final Logger logger = LoggerFactory.getLogger(UserDAOImpl.class);
	private static final String MAPPER_NAMESPACE_USER = "logos.user.";
}
