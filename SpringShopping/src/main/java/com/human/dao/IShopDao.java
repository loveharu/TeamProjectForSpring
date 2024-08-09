package com.human.dao;

import java.util.ArrayList;

import com.human.dto.ShopDto;

public interface IShopDao {
	public void insert(ShopDto dto) throws Exception;
	public ArrayList<ShopDto> select() throws Exception;
	public ShopDto returnMatch(int id) throws Exception;
	public void delete(int id) throws Exception;
}
