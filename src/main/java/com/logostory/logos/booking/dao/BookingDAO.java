package com.logostory.logos.booking.dao;

import java.util.List;

import com.logostory.logos.booking.domain.Booking;


public interface BookingDAO {

	
	public boolean insertBooking(Booking booking) throws Exception; //예약등록 -insert

	public boolean updateBooking(Booking booking) throws Exception; //예약수정 - update

	public Booking selectBooking(Booking booking) throws Exception; //예약상세보기 - select Bean

	public List<Booking> selectBookingList(Booking booking) throws Exception; //예약 리스트 - select List

	public boolean deleteBooking(Booking booking) throws Exception; //예약 삭제 - delete
	
	
}
