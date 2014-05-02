package com.yswsoft.myweb.core.service.impl;

import org.springframework.stereotype.Service;

import com.yswsoft.myweb.core.model.User;
import com.yswsoft.myweb.core.service.UserService;

@Service(value = "userServiceImpl")
public class UserServiceImpl extends BaseServiceImpl<User> implements UserService{

}
