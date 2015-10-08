package com.logostory.logos.product.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.logostory.logos.product.domain.Product;

@Repository
public class ProductDao {

	private static final Logger logger = LoggerFactory.getLogger(ProductDao.class);
	private static final String MAPPER_NAMESPACE_PRODUCT = "logos.product.";

	@Autowired
	SqlSessionTemplate sqlSessionTemplate;

	public boolean setProduct(Product product) throws Exception {

		int result = sqlSessionTemplate.insert(MAPPER_NAMESPACE_PRODUCT + "setProduct", product);
		if (result > 0)
			return true;
		else
			return false;
	}
/*
	@Override
	public Promotion getPromotion(String promotionId) throws Exception {

		Promotion resultPromotion = sqlSessionTemplate.selectOne(MAPPER_NAMESPACE_PROMOTION + "getPromotion",
				promotionId);
		return resultPromotion;
	}
*/

	public List<Product> getProductList(Product product) throws Exception {

		List<Product> resultProductList = sqlSessionTemplate
				.selectList(MAPPER_NAMESPACE_PRODUCT + "getProductList", product);
		logger.debug("promotion result: " + resultProductList.size());

		return resultProductList;
	}
	/*
	@Override
	public boolean updatePromotion(Promotion promotion) throws Exception {

		int result = sqlSessionTemplate.update(MAPPER_NAMESPACE_PROMOTION + "updatePromotion", promotion);
		if (result > 0)
			return true;
		else
			return false;
	}

	@Override
	public boolean deletePromotion(String promotionId) throws Exception {

		int result = sqlSessionTemplate.delete(MAPPER_NAMESPACE_PROMOTION + "deletePromotion", promotionId);
		if (result > 0)
			return true;
		else
			return false;
	}
*/
}
