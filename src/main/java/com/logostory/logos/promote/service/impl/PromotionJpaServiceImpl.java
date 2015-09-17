package com.logostory.logos.promote.service.impl;

import java.util.List;

import javax.inject.Named;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Service;

import com.logostory.logos.promote.dao.PromotionDAO;
import com.logostory.logos.promote.domain.Promotion;
import com.logostory.logos.promote.service.PromotionService;

@Service("promtoionJAPService")
public class PromotionJpaServiceImpl implements PromotionService {
	
	@Autowired
	@Named("promotionJPA")
	PromotionDAO promotionDAO;

	@Override
	public boolean setPromotion(Promotion promotion) throws Exception {
		return promotionDAO.setPromotion(promotion);
	}

	@Override
	public Promotion getPromotion(Long promotionId) throws Exception {
		// TODO Auto-generated method stub
		return promotionDAO.getPromotion(promotionId);
	}

	@Override
	public List<Promotion> getPromotionList(Promotion promotion) throws Exception {
		// TODO Auto-generated method stub
		return promotionDAO.getPromotionList(promotion);
	}

	@Override
	public boolean updatePromotion(Promotion promotion) throws Exception {
		// TODO Auto-generated method stub
		return promotionDAO.updatePromotion(promotion);
	}

	@Override
	public boolean deletePromotion(Long promotionId) throws Exception {
		// TODO Auto-generated method stub
		return promotionDAO.deletePromotion(promotionId);
	}

	@Override
	public Page<Promotion> getPromotionPage(Promotion promotion, int page, int size) throws Exception {
		// TODO Auto-generated method stub
		return promotionDAO.getPromotionPage(promotion, new PageRequest(page, size));
	}

}
