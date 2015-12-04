package com.fukang.service.impl;

import com.fukang.dao.IUserDao;
import com.fukang.model.UserModel;
import com.fukang.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("IUserService")
public class UserServiceImpl implements IUserService {

    @Autowired
    IUserDao iUserDao;

    @Override
    public UserModel getUserByPrimaryKey(String id) {
        return iUserDao.getUserByPrimaryKey(id);
    }

    @Override
    public UserModel getUserByUsername(String username) {
        return iUserDao.getUserByUsername(username);
    }

    @Override
    public boolean addUser(UserModel user) {
        return iUserDao.addUser(user);
    }

    @Override
    public boolean delUserByModel(UserModel user) {
        return iUserDao.delUser(user);
    }

    @Override
    public boolean delUserByPrimaryKey(String id) {
        UserModel user = iUserDao.getUserByPrimaryKey(id);
        return iUserDao.delUser(user);
    }

    @Override
    public boolean updUserByModel(UserModel user) {
        return iUserDao.updUser(user);
    }
}
