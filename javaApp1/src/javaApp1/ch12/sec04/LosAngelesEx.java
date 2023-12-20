package javaApp1.ch12.sec04;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Calendar;
import java.util.TimeZone;

public class LosAngelesEx {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		TimeZone timeZone = TimeZone.getTimeZone("America/Los_Angeles");
		TimeZone timeZone1 = TimeZone.getTimeZone("JST");
		TimeZone timeZone2 = TimeZone.getTimeZone("Asia/Seoul");
		
		Calendar now = Calendar.getInstance(timeZone1);
		System.out.println(now.get(Calendar.MONTH) + "��" + now.get(Calendar.DAY_OF_MONTH) + "��" );
		System.out.println(now.get(Calendar.HOUR) + "��" + now.get(Calendar.MINUTE) + "��" );
		
		//Ÿ���� �˻� java-timezone-ids
		// https://garygregory.wordpress.com/2013/06/18/what-are-the-java-timezone-ids/
		
		// ������ Ÿ���� ���̵� ���
		String[] av = timeZone.getAvailableIDs();
		for( String a: av) {
			System.out.println(a);
		}
		LocalDateTime now1 = LocalDateTime.now();
		DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy.MM.dd a HH:mm:ss");
		System.out.println("����ð� :" + now1.format(dtf) );
		// 1����
		LocalDateTime now1After = now1.plusYears(1);
		System.out.println("1���� :" + now1After.format(dtf) );
		//3����
		LocalDateTime now3Before = now1.minusYears(3);
		System.out.println("3���� :" + now3Before.format(dtf) );

		//2����
		LocalDateTime now4Arr = now1.plusWeeks(2);
		System.out.println("2���� :" + now4Arr.format(dtf) );
		//���ȭ�� ������ : ���ó�¥  / �ݳ��� : 2���� ��¥
		System.out.println("������" + now1.format(dtf) + "  " + "�ݳ���" + now4Arr.format(dtf));

	}

}
