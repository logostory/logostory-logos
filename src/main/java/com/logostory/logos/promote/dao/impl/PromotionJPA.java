package com.logostory.logos.promote.dao.impl;

import java.util.List;

import javax.persistence.EntityManager;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Repository;
import org.springframework.util.StringUtils;

import com.google.common.collect.Lists;
import com.logostory.logos.promote.dao.PromotionDAO;
import com.logostory.logos.promote.domain.Promotion;
import com.logostory.logos.promote.domain.QPromotion;
import com.logostory.logos.promote.repository.PromotionRepository;
import com.mysema.query.BooleanBuilder;
import com.mysema.query.jpa.JPQLQuery;

@Repository("promotionJPA")
public class PromotionJPA implements PromotionDAO {
	
	private static final Logger logger = LoggerFactory.getLogger(PromotionJPA.class);

	@Autowired
	PromotionRepository repository;
	
	@Autowired
	EntityManager em;
	
	@Override
	public boolean setPromotion(Promotion promotion) throws Exception {
		
		Promotion resultPromotion = repository.save(promotion);
		logger.debug(resultPromotion.toString());
		
		return false;
	}

	@Override
	public Promotion getPromotion(Long promotionId) throws Exception {
		Promotion resultPromotion = repository.getOne(promotionId);
		return resultPromotion;
	}

	@Override
	public List<Promotion> getPromotionList(Promotion promotion) throws Exception {
		return Lists.newArrayList(repository.findAll(getSearchCondition(promotion)));
	}

	@Override
	public boolean updatePromotion(Promotion promotion) throws Exception {
		// TODO Auto-generated method stub
		Promotion updatedPromotion = repository.save(promotion);
		
		logger.debug(updatedPromotion.toString());
		return true;
	}

	@Override
	public boolean deletePromotion(Long promotionId) throws Exception {
		repository.delete(promotionId);
		return true;
	}

	@Override
	public Page<Promotion> getPromotionPage(Promotion promotion, Pageable pageable) throws Exception {
		return repository.findAll(getSearchCondition(promotion), pageable);
	}
	
	private BooleanBuilder getSearchCondition(Promotion promotion) throws Exception{
		
		QPromotion qPromotion = QPromotion.promotion;
		
		BooleanBuilder builder = new BooleanBuilder();
		if(!StringUtils.isEmpty(promotion.getPmTitle())){
			builder.or(qPromotion.pmTitle.like(promotion.getPmTitle()));
		}
		if(!StringUtils.isEmpty(promotion.getPmContents())) {
			builder.or(qPromotion.pmContents.like(promotion.getPmContents()));
		}
		if(!StringUtils.isEmpty(promotion.getPmType())){
			builder.or(qPromotion.pmType.eq(promotion.getPmType()));
		}
		if(!StringUtils.isEmpty(promotion.getPmImageUrl())){
			builder.or(qPromotion.pmImageUrl.like(promotion.getPmImageUrl()));
		}
		if(!StringUtils.isEmpty(promotion.getPmLinkurl())) {
			builder.or(qPromotion.pmLinkurl.like(promotion.getPmLinkurl()));
		}
		
		return builder;
	}

}
