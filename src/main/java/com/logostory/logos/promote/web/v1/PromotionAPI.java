package com.logostory.logos.promote.web.v1;

import java.util.List;

import javax.inject.Named;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.logostory.logos.promote.domain.Promotion;
import com.logostory.logos.promote.service.PromotionService;

@RestController
@RequestMapping("promotion/v1")
public class PromotionAPI {

	@Autowired
	@Named("promtoionJAPService")
	PromotionService promtoionJAPService;

	@RequestMapping(value = "/promotions", method = RequestMethod.POST)
	public String setPromotion(@RequestBody Promotion promotion) throws Exception {

		if (promtoionJAPService.setPromotion(promotion)) {
			return "200";
		} else {
			return "500";
		}
	}

	@RequestMapping(value = "/promotions/{promotionId}", method = RequestMethod.GET)
	public Promotion getPromotion(@PathVariable Long promotionId) throws Exception {
		return promtoionJAPService.getPromotion(promotionId);
	}

	@RequestMapping(value = "/promotions", method = RequestMethod.GET)
	public List<Promotion> getPromotionList(Promotion promotion) throws Exception {
		return promtoionJAPService.getPromotionList(promotion);
	}
	
	@RequestMapping(value = "/promotions/{page}/{size}", method = RequestMethod.GET)
	public Page<Promotion> getPromotionPage(Promotion promotion, @PathVariable int page, @PathVariable int size) throws Exception {
		
		return promtoionJAPService.getPromotionPage(promotion, page, size);
	}

	@RequestMapping(value = "/promotions", method = RequestMethod.PUT)
	public String updatePromotion(@RequestBody Promotion promotion) throws Exception{
		if(promtoionJAPService.updatePromotion(promotion)){
			return "200";
		}else{
			return "500";
		}
	}

	@RequestMapping(value = "/promotions/{promotionId}", method = RequestMethod.DELETE)
	public String deletePromotion(@PathVariable String promotionId) throws Exception{
		if(promtoionJAPService.deletePromotion(Long.getLong(promotionId))){
			return "200";
		}else{
			return "500";
		}
	}
}
