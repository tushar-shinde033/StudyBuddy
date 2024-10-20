package entities;

import java.sql.Timestamp;

public class AllCourses {
private int id;
private String cName;
private String cDescription;
private String cPost;
private String cInstructor;
private String cExperience;
private String instructorInfo;
private String img;
private int price;
@Override
public String toString() {
	return "AllCourses [id=" + id + ", cName=" + cName + ", cDescription=" + cDescription + ", cPost=" + cPost
			+ ", cInstructor=" + cInstructor + ", cExperience=" + cExperience + ", instructorInfo=" + instructorInfo
			+ ", img=" + img + ", price=" + price + "]";
}
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getcName() {
	return cName;
}
public void setcName(String cName) {
	this.cName = cName;
}
public String getcDescription() {
	return cDescription;
}
public void setcDescription(String cDescription) {
	this.cDescription = cDescription;
}
public String getcPost() {
	return cPost;
}
public void setcPost(String cPost) {
	this.cPost = cPost;
}
public String getcInstructor() {
	return cInstructor;
}
public void setcInstructor(String cInstructor) {
	this.cInstructor = cInstructor;
}
public String getcExperience() {
	return cExperience;
}
public void setcExperience(String cExperience) {
	this.cExperience = cExperience;
}
public String getInstructorInfo() {
	return instructorInfo;
}
public void setInstructorInfo(String instructorInfo) {
	this.instructorInfo = instructorInfo;
}
public String getImg() {
	return img;
}
public void setImg(String img) {
	this.img = img;
}
public int getPrice() {
	return price;
}
public void setPrice(int price) {
	this.price = price;
}

}
