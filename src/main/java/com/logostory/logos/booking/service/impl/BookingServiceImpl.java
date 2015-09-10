
package com.logostory.logos.booking.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.logostory.logos.booking.dao.BookingDAO;
import com.logostory.logos.booking.domain.Booking;
import com.logostory.logos.booking.service.BookingService;



/*@Service
public class PromotionServiceImpl implements PromotionService {
	
	@Autowired
	PromotionDAO promotionDAO;

	@Override
	public boolean setPromotion(Promotion promotion) throws Exception {
		return promotionDAO.setPromotion(promotion);
	}
*/

@Service
public class BookingServiceImpl implements BookingService {

	@Autowired
	BookingDAO bookingDAO;
	
	
	//예약 등록 로직 호출 - insert
	public boolean insertBooking(Booking booking) throws Exception{
		return bookingDAO.insertBooking(booking);
	} 
	
	//예약 수정 - update
	public boolean updateBooking(Booking booking) throws Exception{
		return bookingDAO.updateBooking(booking);
	}
	
	//예약 내용 - select Bean	
	public Booking selectBooking(Booking booking) throws Exception{
		return bookingDAO.selectBooking(booking);
	}
	
	//예약 리스트 - select List
	public List<Booking> selectBookingList(Booking booking) throws Exception{
		return bookingDAO.selectBookingList(booking);
	}
	
	//예약 삭제 - delete	
	public boolean deleteBooking(Booking booking) throws Exception{
		return bookingDAO.deleteBooking(booking);
	}
	
	
	
}
