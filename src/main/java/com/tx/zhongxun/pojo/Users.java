package com.tx.zhongxun.pojo;

public class Users {
    private int id;
    private String mobName;
    private String userName;
    private String nickname;
    private String phone;
    private byte register;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getMobName() {
        return mobName;
    }

    public void setMobName(String mobName) {
        this.mobName = mobName;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getNickname() {
        return nickname;
    }

    public void setNickname(String nickname) {
        this.nickname = nickname;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public byte getRegister() {
        return register;
    }

    public void setRegister(byte register) {
        this.register = register;
    }

}
