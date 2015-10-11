package com.logostory.logos.product.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.logostory.logos.product.dao.ProductDao;
import com.logostory.logos.product.domain.Product;


@Service
public class ProductService {
	
	@Autowired
	ProductDao productDao;

	public boolean setProduct(Product product) throws Exception {
	
		return productDao.setProduct(product);
	}
/*
	@Override
	public Promotion getPromotion(String promotionId) throws Exception {
		return promotionDAO.getPromotion(promotionId);
	}
*/
	
	public List<Product> getProductList(Product product) throws Exception {
		return productDao.getProductList(product);
	}
/*
	@Override
	public boolean updatePromotion(Promotion promotion) throws Exception {
		return promotionDAO.updatePromotion(promotion);
	}

	@Override
	public boolean deletePromotion(String promotionId) throws Exception {
		return promotionDAO.deletePromotion(promotionId);
	}
*/
}
