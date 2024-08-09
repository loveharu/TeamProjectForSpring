package com.human.service;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.human.dao.IShopDao;
import com.human.dto.ShopDto;

@Service
public class ShopServiceImpl implements IShopService{

	@Autowired
	private SqlSession sqlSession;
	@Override
	public void insert(ShopDto dto) throws Exception {
		IShopDao dao = sqlSession.getMapper(IShopDao.class);
		dao.insert(dto);
	}

	@Override
	public ArrayList<ShopDto> select() throws Exception {
		IShopDao dao =sqlSession.getMapper(IShopDao.class);
		System.out.println(dao.select());
		return dao.select();
	}

	@Override
	public ShopDto returnMatch(int id) throws Exception {
		IShopDao dao = sqlSession.getMapper(IShopDao.class);
		
		return dao.returnMatch(id);
	}

	@Override
	public void delete(int id) throws Exception {
		IShopDao dao = sqlSession.getMapper(IShopDao.class);
		dao.delete(id);
		
	}

}
