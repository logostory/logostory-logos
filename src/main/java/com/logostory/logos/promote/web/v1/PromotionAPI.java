package com.logostory.logos.promote.web.v1;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
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
	PromotionService promotionService;

	@RequestMapping(value = "/promotions", method = RequestMethod.POST)
	public String setPromotion(@RequestBody Promotion promotion) throws Exception {

		if (promotionService.setPromotion(promotion)) {
			return "200";
		} else {
			return "500";
		}
	}

	@RequestMapping(value = "/promotions/{promotionId}", method = RequestMethod.GET)
	public Promotion getPromotion(@PathVariable String promotionId) throws Exception {
		return promotionService.getPromotion(promotionId);
	}

	@RequestMapping(value = "/promotions", method = RequestMethod.GET)
	public List<Promotion> getPromotionList(@RequestBody Promotion promotion) throws Exception {
		return promotionService.getPromotionList(promotion);
	}

	@RequestMapping(value = "/promotions", method = RequestMethod.PUT)
	public String updatePromotion(@RequestBody Promotion promotion) throws Exception{
		if(promotionService.updatePromotion(promotion)){
			return "200";
		}else{
			return "500";
		}
	}

	@RequestMapping(value = "/promotions/{promotionId}", method = RequestMethod.DELETE)
	public String deletePromotion(@PathVariable String promotionId) throws Exception{
		if(promotionService.deletePromotion(promotionId)){
			return "200";
		}else{
			return "500";
		}
	}
}
