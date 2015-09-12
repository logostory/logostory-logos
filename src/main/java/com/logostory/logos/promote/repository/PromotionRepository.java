package com.logostory.logos.promote.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.querydsl.QueryDslPredicateExecutor;
import org.springframework.data.repository.PagingAndSortingRepository;

import com.logostory.logos.promote.domain.Promotion;

public interface PromotionRepository
		extends QueryDslPredicateExecutor<Promotion>, JpaRepository<Promotion, Long>, PagingAndSortingRepository<Promotion, Long> {

}
