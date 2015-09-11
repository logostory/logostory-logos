package com.logostory.logs.booking;

import static org.junit.Assert.*;

import java.util.List;

import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.SpringApplicationConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

import com.logostory.logos.booking.domain.Booking;
import com.logostory.logos.booking.service.BookingService;
import com.logostory.logos.common.boot.LogosApplicaiton;

@RunWith(SpringJUnit4ClassRunner.class)
@SpringApplicationConfiguration(classes = LogosApplicaiton.class)
@WebAppConfiguration
public class BookingCRUDTest {

	/*
	 * 
	 * JUnit은 단위 테스트 도구입니다. 외부 테스트 프로그램(케이스)을 작성하여 System.out으로 번거롭게 디버깅하지 않아도
	 * 됩니다. 프로그램 테스트 시 걸릴 시간도 관리할 수 있게 해주며 오픈 소스이며, 플러그인 형태로 Eclipse에 포함되어 있습니다.
	 * 하나의 jar 파일이 전부이며 사용법도 간단합니다. 어느 정도 개발이 진행되면 프로그램에 대한 단위 테스트는 반드시 수행해야
	 * 합니다. JUnit은 보이지 않고 숨겨진 단위 테스트를 끌어내어 정형화시켜 단위 테스트를 쉽게 해주는 테스트용 Framework
	 * 입니다. JDK 1.4에서 추가된 assertXXX를 사용하여 Test를 진행합니다. JUnit은 테스트 결과를 확인하는 것 이외
	 * 최적화된 코드를 유추해내는 기능도 제공합니다. 또한, 테스트 결과를 단순한 텍스트로 남기는 것이 아니라 Test클래스로 남깁니다.
	 * 그래서 개발자에게 테스트 방법 및 클래스의 History를 넘겨줄 수도 있습니다.
	 * 
	 * 테스트 클래스를 실행하는 방법은 테스트 클래스에서 마우스 오른쪽 버튼 -> 
	 * RunAs -> JUnit Test를 선택
	 */

	private static final Logger logger = LoggerFactory.getLogger(BookingCRUDTest.class);

	// Booking과 BookingService를 연결
	@Autowired
	BookingService bookingSercice;
	Booking booking;

	// TEST위한 TEST값 빈 , = @Before 먼저처리
	@Before
	public void before() throws Exception {
		booking = new Booking();
		booking.setBkName("이름은?");
		booking.setBkEmail("bkEmail");
		booking.setBkPhone("bkPhone");
		booking.setBkPerson("bkPerson");
		booking.setBkMessage("bkMessage");
		bookingSercice.insertBooking(booking);
	}

	@Test
	public void deleteBookingTest() throws Exception {

		if (bookingSercice.insertBooking(booking)) {

			Booking Delbook = bookingSercice.selectBookingList(booking).get(0);
			logger.debug("bookingNumber : " + Delbook.getBkNum());
			assertTrue(bookingSercice.deleteBooking(Delbook)); // assertTrue =
																// true 혹은
																// false를 돌려줌

		}
	}

	@Test
	public void insertBookingTest() throws Exception {

		if (bookingSercice.insertBooking(booking)) {
			logger.debug("insertBooking : " + booking.getBkName());
			assertTrue(bookingSercice.insertBooking(booking));

		}
	}

	@Test
	public void updateBookingTest() throws Exception {

		List<Booking> list = bookingSercice.selectBookingList(booking);

		// 0 번인덱스 값을 불러오기위한 전처리,
		if (list.size() == 0) {

			bookingSercice.insertBooking(booking); // 사이즈가 0이면 하나 넣고 test
			booking = bookingSercice.selectBookingList(booking).get(0);

		} else {

			booking = list.get(0);

		}

		// 업데이트
		booking.setBkMessage("It's Update TEST");

		// TEST로직
		if (bookingSercice.updateBooking(booking)) {

			// 한번더 유효성검사
			if (bookingSercice.selectBookingList(booking).size() > 0) {

				assertTrue(true);

			} else {

				assertTrue(false);

			}
		} else {

			assertTrue(false);

		}
	}

}
