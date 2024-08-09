package com.human.service;

import java.util.ArrayList;
import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.human.dto.CustomerDto;
import com.human.dto.HobbyDto;
import com.human.vo.CustomerHobbyVo;
import com.human.vo.CustomerHobbyVo2;

@Service
public class CustomerHobbyServiceImpl implements ICustomerHobbyService {

	@Inject
	private IHobbyService hobbyService;
	@Inject
	private ICustomerService customerService;

	@Override
	public void insertCustomInfo(CustomerDto dto, CustomerHobbyVo vo) throws Exception {
		// TODO Auto-generated method stub
		// 트렌젝션
		customerService.insert(dto);
		vo.setId(customerService.selectMaxId());// 다음시간 101를 읽어오는 sql작성
		System.out.println(dto);
		System.out.println(vo);

		if (vo.getHobbys() != null) {
			for (String hobby : vo.getHobbys()) {
				if (hobby.equals("")) {
					continue;
				}
				HobbyDto hDto = new HobbyDto();
				hDto.setId(vo.getId());
				hDto.setHobby(hobby);
				System.out.println(hDto);
				hobbyService.insert(hDto);
			}
		}

	}

	@Override
	public List<CustomerHobbyVo> selectAll() throws Exception {
		List<CustomerHobbyVo> customerInfoVos = new ArrayList<CustomerHobbyVo>();

		List<CustomerDto> customerDtos = customerService.selectAll();
		System.out.println(customerDtos);

		if (customerDtos != null) {
			for (CustomerDto dto : customerDtos) {

				List<String> hobbys = hobbyService.selectId(dto.getId());
				customerInfoVos.add(new CustomerHobbyVo(dto, hobbys));

			}
		}
		return customerInfoVos;
	}

	@Override
	public List<CustomerHobbyVo2> selectAllCustomerHobby() throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	
}



