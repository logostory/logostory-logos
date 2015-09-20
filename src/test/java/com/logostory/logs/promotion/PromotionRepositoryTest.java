package com.logostory.logs.promotion;

import static org.junit.Assert.assertNotNull;

import java.util.List;

import javax.persistence.EntityManager;

import static org.junit.Assert.*;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.SpringApplicationConfiguration;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

import com.logostory.logos.common.boot.LogosApplicaiton;
import com.logostory.logos.promote.domain.Promotion;
import com.logostory.logos.promote.domain.QPromotion;
import com.logostory.logos.promote.repository.PromotionRepository;
import com.mysema.query.BooleanBuilder;
import com.mysema.query.jpa.impl.JPAQuery;

@RunWith(SpringJUnit4ClassRunner.class)
@SpringApplicationConfiguration(classes = LogosApplicaiton.class)
@WebAppConfiguration
public class PromotionRepositoryTest {
	
	@Autowired
	PromotionRepository promotionRepository;
	
	@Autowired
	EntityManager em;
	
	@Test
	public void selectPromotionListTest() throws Exception {
		
		List<Promotion> result = 
		promotionRepository.findAll();
		assertNotNull(result);
	}
	
	@Test
	public void qlsTest() throws Exception {
		
		JPAQuery query = new JPAQuery(em);
		QPromotion qPromotion = new QPromotion("q");
		
		List<Promotion> promotions = query.from(qPromotion)
				.where(qPromotion.id.between(1, 3))
				.list(qPromotion);
		
		assertNotNull(promotions);
		System.out.println("promotion count: " + promotions.size());
	}
	
	@Test
	public void queryDSLWithSpringDataTest() throws Exception {
		QPromotion qPromotion = QPromotion.promotion;
		
		BooleanBuilder builder = new BooleanBuilder();
		builder.or(qPromotion.id.between(1, 3));
		
		Iterable<Promotion> list = 
		promotionRepository.findAll(builder);
		assertNotNull(list);
	}

	@Test
	public void queryDSLWithPage() throws Exception {
		
		QPromotion qPromotion = QPromotion.promotion;
		
		Pageable pageable = new PageRequest(3, 2);
		
		Page<Promotion> page = 
		promotionRepository.findAll(qPromotion.id.between(1, 10), pageable);
		
		assertNotNull(page);
	}

}
