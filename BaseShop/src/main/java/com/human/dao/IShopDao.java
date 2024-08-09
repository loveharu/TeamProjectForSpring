package com.human.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;

import com.human.dto.ShopDto;

public interface IShopDao {
	public void insert(ShopDto dto) throws Exception;
	public ArrayList<ShopDto> selectAll() throws Exception;
	public ShopDto productInfo(int id) throws Exception;
	public void delete(int id) throws Exception;
	public ShopDto edit(int id) throws Exception;
	public void update(ShopDto dto) throws Exception;


}
