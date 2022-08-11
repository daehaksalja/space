package org.study.home.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.study.home.mapper.AdminMapper;
import org.study.home.model.Criteria;
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
	
	/* 상품 리스트 */
	   @Override
	   public List<ShipDTO> goodsGetList(Criteria cri) {
	      System.out.println("goodsGetTotalList().........." + cri);
	      return adminMapper.goodsGetList(cri);
	   }

	   /* 상품 총 갯수 */
	   public int goodsGetTotal(Criteria cri) {
	      System.out.println("goodsGetTotal()........." + cri);
	      return adminMapper.goodsGetTotal(cri);
	   }
}
