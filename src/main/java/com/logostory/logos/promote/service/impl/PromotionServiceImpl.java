package com.logostory.logos.promote.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.logostory.logos.promote.dao.PromotionDAO;
import com.logostory.logos.promote.domain.Promotion;
import com.logostory.logos.promote.service.PromotionService;


@Service
public class PromotionServiceImpl implements PromotionService {
	
	@Autowired
	PromotionDAO promotionDAO;

	@Override
	public boolean setPromotion(Promotion promotion) throws Exception {
		return promotionDAO.setPromotion(promotion);
	}

	@Override
	public Promotion getPromotion(Long promotionId) throws Exception {
		return promotionDAO.getPromotion(promotionId);
	}

	@Override
	public List<Promotion> getPromotionList(Promotion promotion) throws Exception {
		return promotionDAO.getPromotionList(promotion);
	}

	@Override
	public boolean updatePromotion(Promotion promotion) throws Exception {
		return promotionDAO.updatePromotion(promotion);
	}

	@Override
	public boolean deletePromotion(Long promotionId) throws Exception {
		return promotionDAO.deletePromotion(promotionId);
	}
}
