package com.pack1;

import java.io.Serializable;

public class AdminBean implements Serializable
{
private String uname;
private String password;
private String FName;
private String LName;
private String Address;
private String MailId;
private String PhoneNumber;
public String getUname() {
	return uname;
}
public void setUname(String uname) {
	this.uname = uname;
}
public String getPassword() {
	return password;
}
public void setPassword(String password) {
	this.password = password;
}
public String getFName() {
	return FName;
}
public void setFName(String fName) {
	FName = fName;
}
public String getLName() {
	return LName;
}
public void setLName(String lName) {
	LName = lName;
}
public String getAddress() {
	return Address;
}
public void setAddress(String address) {
	Address = address;
}
public String getMailId() {
	return MailId;
}
public void setMailId(String mailId) {
	MailId = mailId;
}
public String getPhoneNumber() {
	return PhoneNumber;
}
public void setPhoneNumber(String phoneNumber) {
	PhoneNumber = phoneNumber;
}
public AdminBean()
{
	
}
}
