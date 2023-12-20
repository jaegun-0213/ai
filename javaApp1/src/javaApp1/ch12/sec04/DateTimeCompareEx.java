package javaApp1.ch12.sec04;

import java.awt.image.DataBuffer;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

import javax.swing.text.DateFormatter;

public class DateTimeCompareEx {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		// 특정날짜
		LocalDateTime startDateTime = LocalDateTime.of(2021, 1, 1, 0, 0);
		LocalDateTime stopDateTime = LocalDateTime.of(2021, 12, 31, 23, 59);
		LocalDateTime eventDateTime = LocalDateTime.of(2022, 12, 31, 23, 59);
		
		
		DateTimeFormatter dtr = DateTimeFormatter.ofPattern("yyyy-MM-dd a HH:mm:ss");
		System.out.println("시작일" + startDateTime.format(dtr));
		System.out.println("종료일" + stopDateTime.format(dtr));
		
		if( startDateTime.isAfter(stopDateTime)) {
			System.out.println("이벤트 진행중입니다");
		} else if (eventDateTime.isEqual(stopDateTime)) {
			System.out.println("이벤트 오늘 마감합니다");
		}else {
			System.out.println("이벤트 마감했습니다. 다음 기회에");
		}
		
		
		System.out.println();
		// 2023-12-20 12:00 ~ 12:25 11:59 이벤트
		// 이벤트 기간 세일 70%, 이벤트 마감일 세일 85%, 이벤트 종료
		
		LocalDateTime starDateTime1 = LocalDateTime.of(2023, 12, 20, 12, 00);
		LocalDateTime stopDateTime1 = LocalDateTime.of(2023, 12, 25, 11, 59);
		
		DateTimeFormatter dtr1 = DateTimeFormatter.ofPattern("yyyy-MM-dd a HH:mm:ss");
		System.out.println("시작일" + starDateTime1.format(dtr1));
		System.out.println("종료일" + stopDateTime1.format(dtr1));
		
		if ( starDateTime1.isAfter(stopDateTime1)) {
			System.out.println("이벤트 기간 세일 70%");
		}else if (stopDateTime1.isEqual(stopDateTime1)) {
			System.out.println("이벤트 마감일 세일 85%");
		}else {
			System.out.println("이벤트 종료");
		}
		
		System.out.println();
		
		LocalDateTime starDateTime2 = LocalDateTime.of(2023, 12, 20, 12, 00);
		LocalDateTime stopDateTime2 = LocalDateTime.of(2023, 12, 25, 11, 59);
		LocalDateTime currentDate = LocalDateTime.now();
		if(currentDate.isBefore(stopDateTime2) && currentDate.isAfter(starDateTime2)) {
			System.out.println("이벤트 기간 세일 70%");
		}else if (stopDateTime1.isEqual(stopDateTime1)) {
			System.out.println("이벤트 마감일 세일 85%");
		}else {
			System.out.println("이벤트 종료");
		}
		
		
	}

}
