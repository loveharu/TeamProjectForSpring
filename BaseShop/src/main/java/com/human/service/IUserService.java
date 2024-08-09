package com.human.service;

import java.util.ArrayList;

import com.human.dto.UserDto;

public interface IUserService {
	public ArrayList<UserDto> select() throws Exception;
	public void insert(UserDto dto) throws Exception;
	public void update (UserDto dto) throws Exception;
	public String match (UserDto dto) throws Exception;
	public void delete(UserDto dto) throws Exception; 
	public UserDto getInfo(String id) throws Exception;
	
	
}
