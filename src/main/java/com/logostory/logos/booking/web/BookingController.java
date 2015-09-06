package com.logostory.logos.booking.web;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


@RequestMapping("/backoffice/booking")
@Controller
public class BookingController {

	private static final Logger logger = LoggerFactory.getLogger(BookingController.class);
	private static final String promotionHomeUrl = "backoffice/booking/";

	@Autowired
	//BookingService BookingService;

	// booking - 인덱스의 booking항목에서 최소한의 정보입력으로 예약창으로 넘기기
	@RequestMapping("Make_Booking")
	public String Make_Booking(HttpServletRequest request, Model model) throws Exception {

		return promotionHomeUrl + "Make_Booking";

	}

	
	
	
	
}