package com.human.service;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.human.dao.ICartDao;
import com.human.dto.CartDto;
import com.human.dto.ResultCartDto;
import com.human.dto.ShopDto;

@Service
public class ICartServiceImpl implements ICartService {
	
	@Autowired
	private SqlSession sqlSession;

	@Override
	public void addCart(CartDto dto) throws Exception {
		ICartDao dao = sqlSession.getMapper(ICartDao.class);
		dao.addCart(dto);
	}

	@Override
	public ArrayList<CartDto> select(String u_id) throws Exception {
		ICartDao dao = sqlSession.getMapper(ICartDao.class);
		return dao.select(u_id);
	}

	@Override
	public void delete(int id) throws Exception {
		ICartDao dao = sqlSession.getMapper(ICartDao.class);
		dao.delete(id);
		
	}
	
	
}
