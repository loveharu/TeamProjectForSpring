package com.human.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;

import com.human.dto.CartDto;
import com.human.dto.ResultCartDto;
import com.human.dto.ShopDto;

public interface ICartDao {
	public void addCart(CartDto dto) throws Exception;
	public ArrayList<CartDto> select(String u_id) throws Exception;
	public void delete(int id) throws Exception;
}
