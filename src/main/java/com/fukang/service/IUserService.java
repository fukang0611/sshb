package com.fukang.service;

import com.fukang.model.UserModel;

public interface IUserService {

    UserModel getUserByPrimaryKey(String id);

    UserModel getUserByUsername(String username);

    boolean addUser(UserModel user);

    boolean delUserByModel(UserModel user);

    boolean delUserByPrimaryKey(String id);

    boolean updUserByModel(UserModel user);

}
