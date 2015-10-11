package com.logostory.logos.booking.service;

import java.util.List;

import com.logostory.logos.booking.domain.Booking;

/*

구현할 내용. 
DAO호출, 예약 CRUD -먼저

구상중인 작업 내용
예약 등록시 - 승인과정넣을것인가.
예약등록시에 먼저 버튼(나중엔 캔버스나 SVG를 사용)으로 좌석그림과 해당값버튼주고
일별로 넘기면서 예약현황도 볼 수 있게 만들고, 비어있지 않는 자리는 예약막기(예약자리스트 공개?)
일주일 전에 메일보내기 기능으로 알람, 하루전날 알람, 총 두번의 예약 메일보내기 기능 
예약시 만원정도 선금 받음, -결제기능?

*/
public interface BookingService {


	
	public boolean insertBooking(Booking booking) throws Exception; //예약 등록 로직 호출 - insert
	
	public boolean updateBooking(Booking booking) throws Exception; //예약 수정 - update
	
	public Booking selectBooking(Booking booking) throws Exception; //예약 내용 - select Bean

	public List<Booking> selectBookingList(Booking booking) throws Exception; //예약 리스트 - select List
	
	public boolean deleteBooking(Booking booking) throws Exception; //예약 삭제 - delete
}
