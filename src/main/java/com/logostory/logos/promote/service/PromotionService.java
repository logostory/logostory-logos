package com.logostory.logos.promote.service;

import java.util.List;

import com.logostory.logos.promote.domain.Promotion;

public interface PromotionService {
	
	public boolean setPromotion(Promotion promotion) throws Exception;
	
	public Promotion getPromotion(String promotionId) throws Exception;
	
	public List<Promotion> getPromotionList(Promotion promotion) throws Exception;
	
	public boolean updatePromotion(Promotion promotion) throws Exception;
	
	public boolean deletePromotion(String promotionId) throws Exception;
}
