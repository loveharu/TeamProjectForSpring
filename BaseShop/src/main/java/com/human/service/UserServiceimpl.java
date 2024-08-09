package com.human.service;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.human.dao.IUserDao;
import com.human.dto.UserDto;

@Service
public class UserServiceimpl implements IUserService {

	@Autowired
	private SqlSession sqlSession;
	@Override
	public ArrayList<UserDto> select() throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void insert(UserDto dto) throws Exception {
		IUserDao dao = sqlSession.getMapper(IUserDao.class);
		dao.insert(dto);
		
	}

	@Override
	public void update(UserDto dto) throws Exception {
	 IUserDao dao = sqlSession.getMapper(IUserDao.class);
	 dao.update(dto);
		
	}

	@Override
	public String match(UserDto dto) throws Exception {
		IUserDao dao = sqlSession.getMapper(IUserDao.class);
		return dao.match(dto);
	}

	@Override
	public void delete(UserDto dto) throws Exception {
		IUserDao dao = sqlSession.getMapper(IUserDao.class);
		 dao.delete(dto);
		
	}

	@Override
	public UserDto getInfo(String id) throws Exception {
		IUserDao dao= sqlSession.getMapper(IUserDao.class);
		return dao.getInfo(id);
	}

}
