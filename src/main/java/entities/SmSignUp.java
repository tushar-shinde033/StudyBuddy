package entities;

import java.sql.Timestamp;

public class SmSignUp {
	private int id;
 private String fname;
 private String lname;
 private String email;
 private long mob;
 private String password;
 private Timestamp createdAt;
@Override
public String toString() {
	return "SmSignUp [id=" + id + ", fname=" + fname + ", lname=" + lname + ", email=" + email + ", mob=" + mob
			+ ", password=" + password + ", createdAt=" + createdAt + "]";
}
public Timestamp getCreatedAt() {
	return createdAt;
}
public void setCreatedAt(Timestamp createdAt) {
	this.createdAt = createdAt;
}
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getFname() {
	return fname;
}
public void setFname(String fname) {
	this.fname = fname;
}
public String getLname() {
	return lname;
}
public void setLname(String lname) {
	this.lname = lname;
}
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
public long getMob() {
	return mob;
}
public void setMob(long mob) {
	this.mob = mob;
}
public String getPassword() {
	return password;
}
public void setPassword(String password) {
	this.password = password;
}
public SmSignUp() {
	super();
	// TODO Auto-generated constructor stub
}
 
}
