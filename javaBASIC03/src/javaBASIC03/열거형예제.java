package javaBASIC03;

import java.util.Calendar;

public class ���������� {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		Week today = null;
		
		Calendar cal = Calendar.getInstance(); // ��¥�� �̿��� �� �ִ�
		
		int week = cal.get(Calendar.DAY_OF_WEEK);
		System.out.println(week);
		
		System.out.println(Week.THURSDAY);
		
		switch(week) {
			case 1 : today = Week.SUNDAY; break;
			case 2 : today = Week.MONDAY; break;
			case 3 : today = Week.THURSDAY; break;
			case 4 : today = Week.WEDNESDAY; break;
			case 5 : today = Week.TUESDAY; break;
			case 6 : today = Week.FRIDAY; break;
			case 7 : today = Week.SATURDAY; break;
		}
		System.out.println(today);
		
		int[] array; 
		array = new int[3];
	}

}
