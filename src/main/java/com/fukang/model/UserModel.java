package com.fukang.model;


import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "user")
public class UserModel {

    @Id
    @GeneratedValue(generator = "generator")
    @GenericGenerator(name = "generator", strategy = "uuid")
    @Column(name = "id")
    private String id;

    @Column(name = "createtime")
    @Temporal(TemporalType.TIMESTAMP)
    private Date createTime;

    @Column(name = "username")
    private String username;

    @Column(name = "password")
    private String password;

    public UserModel() {
    }

    public UserModel(Date createTime, String username, String password) {
        this.createTime = createTime;
        this.username = username;
        this.password = password;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}
