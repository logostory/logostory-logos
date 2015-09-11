package com.logostory.logos.booking.web;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.logostory.logos.booking.domain.Booking;
import com.logostory.logos.booking.service.BookingService;

//  CURD 구현
// "/backoffice/booking" 요청 들어올시에 해당 컨트롤러가 로직 수행
@RequestMapping("/backoffice/booking")
@Controller
public class BookingController {

	private static final Logger logger = LoggerFactory.getLogger(BookingController.class);
	private static final String bookingHomeUrl = "backoffice/booking/";

	// BookingService 인터페이스와 연결
	@Autowired
	BookingService bookingService;

	// 예약 등록페이지 이동- index에서 처리할 것인가?
	@RequestMapping("/Make_Booking_Page")
	public String Make_Booking_Page(HttpServletRequest request, Model model) throws Exception {

		return bookingHomeUrl + "Make_Booking_Page";

	}

	// 예약 등록 insert
	@RequestMapping("/Make_Booking")
	public String Make_Booking(HttpServletRequest request, Model model, Booking booking) throws Exception {

		if (bookingService.insertBooking(booking)) {
			
			return "redirect:" + "/backoffice/Booking/Booking_List";
			
		} else {
			
			return "error";
			
		}
	}

	// 예약수정 페이지 이동
	@RequestMapping("/Update_Booking_Page")
	public String Update_Booking_Page(HttpServletRequest request, Model model) throws Exception {

		return bookingHomeUrl + "Update_Booking_Page";

	}

	// 예약수정 update
	@RequestMapping("/Update_Booking")
	public String Update_Booking(HttpServletRequest request, Model model, Booking booking) throws Exception {

		if (bookingService.updateBooking(booking)) {
			
			return "redirect:" + "/backoffice/Booking/View_Booking";
			
		} else {
			
			return "error";
		}
	}

	// 예약 상세보기 select Bean
	@RequestMapping("/View_Booking")
	public String View_Booking(HttpServletRequest request, Model model, Booking booking) throws Exception {

		if (bookingService.selectBooking(booking) != null) {

			Booking bookingBean = bookingService.selectBooking(booking);
			model.addAttribute("BookingBean", bookingBean);
			return bookingHomeUrl + "View_Booking";

		} else {
			
			return "error";
			
		}
	}

	// 예약 리스트 select List
	@RequestMapping("/Booking_List")
	public String Booking_List(HttpServletRequest request, Booking booking, Model model) throws Exception {

		if (bookingService.selectBookingList(booking) != null) {
			
			List<Booking> bookingList = bookingService.selectBookingList(booking);
			model.addAttribute("BookingBean", bookingList);
			return bookingHomeUrl + "Booking_List";

		} else {
			
			return "error";
			
		}

	}

	@RequestMapping("/Booking_Delete")
	public String Booking_Delete(HttpServletRequest request, Booking booking, Model model) throws Exception {

		if (bookingService.deleteBooking(booking)) {

			bookingService.deleteBooking(booking);
			return "redirect:" + "/backoffice/Booking/Booking_List";

		} else {

			return "error";
		}

	}

}

/*
 * @RequestMapping("/list") public String list(HttpServletRequest request,
 * Promotion promotion, Model model) throws Exception {
 * 
 * List<Promotion> resultList = promotionService.getPromotionList(promotion);
 * 
 * model.addAttribute("pList", resultList); return promotionHomeUrl + "list"; }
 */
