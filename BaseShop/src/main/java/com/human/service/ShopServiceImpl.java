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
	public ArrayList<ShopDto> selectAll() throws Exception {
		IShopDao dao = sqlSession.getMapper(IShopDao.class);
		return dao.selectAll();
	}

	@Override
	public ShopDto productInfo(int id) throws Exception {
		IShopDao dao = sqlSession.getMapper(IShopDao.class);
		return dao.productInfo(id);
	}

	@Override
	public void delete(int id) throws Exception {
		IShopDao dao = sqlSession.getMapper(IShopDao.class);
		dao.delete(id);
		
	}
	@Override
	public void update(ShopDto dto) throws Exception{
		IShopDao dao = sqlSession.getMapper(IShopDao.class);
		dao.update(dto);
	}

	@Override
	public ShopDto edit(int id) throws Exception {
		IShopDao dao = sqlSession.getMapper(IShopDao.class);
		return dao.edit(id);
		
	}
	
}
