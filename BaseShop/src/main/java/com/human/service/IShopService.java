package com.human.service;

import java.util.ArrayList;

import com.human.dto.ShopDto;

public interface IShopService {
	public void insert(ShopDto dto) throws Exception;
	public ArrayList<ShopDto> selectAll() throws Exception;
	public ShopDto productInfo(int id) throws Exception;
	public void delete(int id) throws Exception;
	public void update(ShopDto dto) throws Exception;
	public ShopDto edit(int id) throws Exception;
	
}
