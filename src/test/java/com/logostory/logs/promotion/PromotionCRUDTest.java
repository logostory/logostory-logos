package com.logostory.logs.promotion;

import static org.junit.Assert.*;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
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
	
	@Autowired
	PromotionService promotionService;
	
	Promotion promotion;
	
	@Before
	public void before(){
		promotion = new Promotion();
		promotion.setPmTitle("test");
		promotion.setPmType("sapleType");
		promotion.setPmContents("testContents");
		promotion.setPmImageUrl("testImgUrl");
		promotion.setPmLinkurl("testLinkUrl");
	}
	
	@Test
	public void deletePromotionTest() throws Exception {
		
		if(promotionService.getPromotionList(promotion).size() == 1){
			String promotionId = promotionService.getPromotionList(promotion).get(0).getPmId();
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
		if(promotionService.getPromotionList(promotion).size() != 0){
			if(promotionService.setPromotion(promotion)){
				promotion.setPmContents("updatetest");
				if(promotionService.updatePromotion(promotion)){
					if(promotionService.getPromotionList(promotion).size() > 0){
						assertTrue(true);
					}else{
						assertTrue(false);
					}
				}
			}
		}
	}
}
