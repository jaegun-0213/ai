package javaApp1.ch12.sec04;

import java.awt.image.DataBuffer;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

import javax.swing.text.DateFormatter;

public class DateTimeCompareEx {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		// Ư����¥
		LocalDateTime startDateTime = LocalDateTime.of(2021, 1, 1, 0, 0);
		LocalDateTime stopDateTime = LocalDateTime.of(2021, 12, 31, 23, 59);
		LocalDateTime eventDateTime = LocalDateTime.of(2022, 12, 31, 23, 59);
		
		
		DateTimeFormatter dtr = DateTimeFormatter.ofPattern("yyyy-MM-dd a HH:mm:ss");
		System.out.println("������" + startDateTime.format(dtr));
		System.out.println("������" + stopDateTime.format(dtr));
		
		if( startDateTime.isAfter(stopDateTime)) {
			System.out.println("�̺�Ʈ �������Դϴ�");
		} else if (eventDateTime.isEqual(stopDateTime)) {
			System.out.println("�̺�Ʈ ���� �����մϴ�");
		}else {
			System.out.println("�̺�Ʈ �����߽��ϴ�. ���� ��ȸ��");
		}
		
		
		System.out.println();
		// 2023-12-20 12:00 ~ 12:25 11:59 �̺�Ʈ
		// �̺�Ʈ �Ⱓ ���� 70%, �̺�Ʈ ������ ���� 85%, �̺�Ʈ ����
		
		LocalDateTime starDateTime1 = LocalDateTime.of(2023, 12, 20, 12, 00);
		LocalDateTime stopDateTime1 = LocalDateTime.of(2023, 12, 25, 11, 59);
		
		DateTimeFormatter dtr1 = DateTimeFormatter.ofPattern("yyyy-MM-dd a HH:mm:ss");
		System.out.println("������" + starDateTime1.format(dtr1));
		System.out.println("������" + stopDateTime1.format(dtr1));
		
		if ( starDateTime1.isAfter(stopDateTime1)) {
			System.out.println("�̺�Ʈ �Ⱓ ���� 70%");
		}else if (stopDateTime1.isEqual(stopDateTime1)) {
			System.out.println("�̺�Ʈ ������ ���� 85%");
		}else {
			System.out.println("�̺�Ʈ ����");
		}
		
		System.out.println();
		
		LocalDateTime starDateTime2 = LocalDateTime.of(2023, 12, 20, 12, 00);
		LocalDateTime stopDateTime2 = LocalDateTime.of(2023, 12, 25, 11, 59);
		LocalDateTime currentDate = LocalDateTime.now();
		if(currentDate.isBefore(stopDateTime2) && currentDate.isAfter(starDateTime2)) {
			System.out.println("�̺�Ʈ �Ⱓ ���� 70%");
		}else if (stopDateTime1.isEqual(stopDateTime1)) {
			System.out.println("�̺�Ʈ ������ ���� 85%");
		}else {
			System.out.println("�̺�Ʈ ����");
		}
		
		
	}

}
