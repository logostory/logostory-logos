package com.logostory.logos.booking.dao.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.logostory.logos.booking.dao.BookingDAO;
import com.logostory.logos.booking.domain.Booking;

@Repository
public class BookingDAOImpl implements BookingDAO {

	private static final Logger logger = LoggerFactory.getLogger(BookingDAOImpl.class);
	private static final String MAPPER_NAMESPACE_BOOKING = "logos.bookong.";

	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	
	
	// 예약 등록 - insert
	@Override
	public boolean insertBooking(Booking booking) throws Exception {

		int result = sqlSessionTemplate.insert(MAPPER_NAMESPACE_BOOKING + "insertBooking", booking);
		if (result > 0)
			return true;
		else
			return false;
	}

	// 예약 수정 - update
	@Override
	public boolean updateBooking(Booking booking) throws Exception {

		int result = sqlSessionTemplate.update(MAPPER_NAMESPACE_BOOKING + "updateBooking", booking);
		if (result > 0)
			return true;
		else
			return false;
	}

	// 예약 상세보기 - select Bean
	@Override
	public Booking selectBooking(Booking booking) throws Exception {

		Booking viewBooking = sqlSessionTemplate.selectOne(MAPPER_NAMESPACE_BOOKING + "selectBookingBean", booking);
		logger.debug("booking result: " + viewBooking);

		return viewBooking;

	}

	// 예약 리스트 - select List
	@Override
	public List<Booking> selectBookingList(Booking booking) throws Exception {

		List<Booking> resultBookingList = sqlSessionTemplate.selectList(MAPPER_NAMESPACE_BOOKING + "selectBooking",
				booking);
		logger.debug("booking result: " + resultBookingList.size());

		return resultBookingList;
	}

	// 예약 삭제 - delete
	@Override
	public boolean deleteBooking(Booking booking) throws Exception {
		
		int result = sqlSessionTemplate.delete(MAPPER_NAMESPACE_BOOKING + "deleteBooking", booking);
		if (result > 0)
			return true;
		else
			return false;

	}

}
