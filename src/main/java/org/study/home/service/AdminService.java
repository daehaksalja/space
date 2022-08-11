package org.study.home.service;

import java.util.List;

import org.study.home.model.Criteria;
import org.study.home.model.ShipDTO;

public interface AdminService {
	public void shipEnroll(ShipDTO ship);
	
	public List<ShipDTO> goodsGetList(Criteria cri);
	   
	   public int goodsGetTotal(Criteria cri) throws Exception;
}
