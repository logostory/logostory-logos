package com.logostory.logs.promotion;

import static org.junit.Assert.*;

import java.util.List;

import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.SpringApplicationConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

import com.logostory.logos.common.boot.LogosApplicaiton;
import com.logostory.logos.promote.domain.Promotion;
import com.logostory.logos.promote.service.PromotionService;

@RunWith(SpringJUnit4ClassRunner.class)
@SpringApplicationConfiguration(classes = LogosApplicaiton.class)
@WebAppConfiguration
public class PromotionCRUDTest {
	
	private static final Logger logger = LoggerFactory.getLogger(PromotionCRUDTest.class);
	
	@Autowired
	PromotionService promotionService;
	
	Promotion promotion;
	
	@Before
	public void before() throws Exception{
		promotion = new Promotion();
		promotion.setPmTitle("한글이 들어가나요?");
		promotion.setPmType("sapleType");
		promotion.setPmContents("testContents");
		promotion.setPmImageUrl("testImgUrl");
		promotion.setPmLinkurl("testLinkUrl");
		promotionService.setPromotion(promotion);
	}
	
	@Test
	public void deletePromotionTest() throws Exception {
		
		if(promotionService.getPromotionList(promotion).size() == 1){
			Long promotionId = promotionService.getPromotionList(promotion).get(0).getId();
			logger.debug("promotion Id: " + promotionId);
			assertTrue(promotionService.deletePromotion(promotionId));
		}
	}
	
	@Test
	public void insertPromotionTest() throws Exception{
		
		if(promotionService.getPromotionList(promotion).size() == 0){
			assertTrue(promotionService.setPromotion(promotion));
		}
	}
	
	@Test
	public void updatePromotionTest() throws Exception {
		
		List<Promotion> list = promotionService.getPromotionList(promotion);
		
		if(list.size() == 0){
			promotionService.setPromotion(promotion);
			promotion = promotionService.getPromotionList(promotion).get(0);
		}else{
			promotion = list.get(0);
		}
		
		promotion.setPmContents("updatetest");
		if(promotionService.updatePromotion(promotion)){
			if(promotionService.getPromotionList(promotion).size() > 0){
				assertTrue(true);
			}else{
				assertTrue(false);
			}
		}else{
			assertTrue(false);
		}
	}
	
}
