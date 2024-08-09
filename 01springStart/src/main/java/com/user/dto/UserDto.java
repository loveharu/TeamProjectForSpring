package com.user.dto;

import java.io.File;
import java.util.ArrayList;
import java.util.Date;

public class UserDto {
	private String id;
	private String nickName;
	private String pw;
	private String gender;
	private ArrayList<String> hobbies;
	private int age;
	private Date birthday;
	private String name;
	private File file;
	private String introduce;
	private String email;
	
	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public UserDto() {}

	public UserDto(String id, String nickName, String pw, String gender, ArrayList<String> hobbies, int age,
			Date birthday, String name, File file, String introduce) {
		super();
		this.id = id;
		this.nickName = nickName;
		this.pw = pw;
		this.gender = gender;
		this.hobbies = hobbies;
		this.age = age;
		this.birthday = birthday;
		this.name = name;
		this.file = file;
		this.introduce = introduce;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getNickName() {
		return nickName;
	}

	public void setNickName(String nickName) {
		this.nickName = nickName;
	}

	public String getPw() {
		return pw;
	}

	public void setPw(String pw) {
		this.pw = pw;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public ArrayList<String> getHobbies() {
		return hobbies;
	}

	public void setHobbies(ArrayList<String> hobbies) {
		this.hobbies = hobbies;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public Date getBirthday() {
		return birthday;
	}

	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public File getFile() {
		return file;
	}

	public void setFile(File file) {
		this.file = file;
	}

	public String getIntroduce() {
		return introduce;
	}

	public void setIntroduce(String introduce) {
		this.introduce = introduce;
	}

	@Override
	public String toString() {
		return "userDto [id=" + id + ", nickName=" + nickName + ", pw=" + pw + ", gender=" + gender + ", hobbies="
				+ hobbies + ", age=" + age + ", birthday=" + birthday + ", name=" + name + ", file=" + file
				+ ", introduce=" + introduce + "]";
	}
	
	

}
