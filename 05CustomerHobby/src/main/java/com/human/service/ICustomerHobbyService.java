package com.human.service;

import java.util.List;

import com.human.dto.CustomerDto;
import com.human.vo.CustomerHobbyVo;
import com.human.vo.CustomerHobbyVo2;

public interface ICustomerHobbyService {
	public void insertCustomInfo(CustomerDto dto,CustomerHobbyVo vo) throws Exception;
	public List<CustomerHobbyVo> selectAll() throws Exception;
	public List<CustomerHobbyVo2> selectAllCustomerHobby() throws Exception;
//	public CustomerDto select(int id) throws Exception;
//	public List<CustomerDto> selectAll() throws Exception;
//	public void delete(int id) throws Exception;
//	public void update(CustomerDto dto) throws Exception;	
//	public Integer selectMaxId() throws Exception;
}
