package org.study.home.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.study.home.mapper.AdminMapper;
import org.study.home.model.ShipDTO;

import lombok.extern.log4j.Log4j;

@Service

public class AdminServiceImpl implements AdminService{
	@Autowired
	private AdminMapper adminMapper;
	/* 상품 등록 */
	@Override
	public void shipEnroll(ShipDTO ship) {
		
System.out.println("shipEnroll");
		
		adminMapper.shipEnroll(ship);
		
	}
}
