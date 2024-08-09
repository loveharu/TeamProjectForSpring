package com.human.dto;

import java.time.LocalDateTime;

public class UserDto {
	private String id;
	private String name;
	private String pw;
	private String gender;
	private LocalDateTime birthday;
	private String email;
	private String phone;
	private String adress;
	
	public UserDto() {}
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
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
	public LocalDateTime getBirthday() {
		return birthday;
	}
	public void setBirthday(LocalDateTime birthday) {
		this.birthday = birthday;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getAdress() {
		return adress;
	}
	public void setAdress(String adress) {
		this.adress = adress;
	}
	@Override
	public String toString() {
		return "userDto [id=" + id + ", name=" + name + ", pw=" + pw + ", gender=" + gender + ", birthday=" + birthday
				+ ", email=" + email + ", phone=" + phone + ", adress=" + adress + "]";
	}
	public UserDto(String id, String name, String pw, 
			String gender, LocalDateTime birthday, String email, 
			String phone,
			String adress) {
		super();
		this.id = id;
		this.name = name;
		this.pw = pw;
		this.gender = gender;
		this.birthday = birthday;
		this.email = email;
		this.phone = phone;
		this.adress = adress;
		System.out.println("dto birthday"+this.birthday);
	}
	
	
}
