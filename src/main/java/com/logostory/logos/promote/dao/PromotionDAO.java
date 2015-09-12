package com.logostory.logos.promote.dao;

import java.util.List;

import com.logostory.logos.promote.domain.Promotion;

public interface PromotionDAO {
	
	public boolean setPromotion(Promotion promotion) throws Exception;
	
	public Promotion getPromotion(Long promotionId) throws Exception;
	
	public List<Promotion> getPromotionList(Promotion promotion) throws Exception;
	
	public boolean updatePromotion(Promotion promotion) throws Exception;
	
	public boolean deletePromotion(Long promotionId) throws Exception;

}
