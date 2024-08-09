package com.human.dao;

import com.human.dto.UserDto;

public interface IUserDao {
	public void insert(UserDto dto) throws Exception;

	public String match(UserDto dto) throws Exception;

	public void update(UserDto dto) throws Exception;

	public void delete(UserDto dto) throws Exception;
	
	public UserDto getInfo(String id) throws Exception;
}
