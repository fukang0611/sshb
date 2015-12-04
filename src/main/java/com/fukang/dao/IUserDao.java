package com.fukang.dao;

import com.fukang.model.UserModel;

public interface IUserDao {

    boolean addUser(UserModel user);

    boolean delUser(UserModel user);

    boolean updUser(UserModel user);

    UserModel getUserByPrimaryKey(String id);

    UserModel getUserByUsername(String username);

}
