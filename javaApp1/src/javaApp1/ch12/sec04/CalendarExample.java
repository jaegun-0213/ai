package javaApp1.ch12.sec04;

import java.util.Calendar;

public class CalendarExample  {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		//싱글톤 패턴
		 Calendar now = Calendar.getInstance(); // 달력을 사용할 수 있는 메소드
		 int a1 = now.get(Calendar.YEAR); // 상수명
		 int a2 = now.get(1);
		 System.out.println(a1 + " " + a2);
		 
		 int a3 = now.get(Calendar.MONTH)+1; // 상수명
		 int a4 = now.get(2)+1;
		 System.out.println(a3 + " " + a4);
		 
		 int a5 = now.get(Calendar.DAY_OF_MONTH); // 상수명
		 int a6 = now.get(5);
		 System.out.println(a5 + " " + a6);

		 int a7 = now.get(Calendar.DAY_OF_WEEK); // 상수명
		 int a8 = now.get(7);
		 System.out.println(a7 + " " + a8);
		 
		 int a9 = now.get(Calendar.AM); // 상수명
		 int a10 = now.get(0);
		 System.out.println(a9 + " " + a10);
		 
		 int a11 = now.get(Calendar.AM_PM); // 상수명
		 int a12 = now.get(9);
		 System.out.println(a11 + " " + a12);
		 
		 if ( a11 == Calendar.AM) {
			 System.out.println("오전");
		 }else {
			System.out.println("오후");
		}
		 
		 int a13 = now.get(Calendar.HOUR); // 상수명
		 int a14 = now.get(10);
		 System.out.println(a13 + " " + a14);
		 
		 int a15 = now.get(Calendar.MINUTE); // 상수명
		 int a16 = now.get(12);
		 System.out.println(a15 + " " + a16);
		 
		 int a17 = now.get(Calendar.SECOND); // 상수명
		 int a18 = now.get(13);
		 System.out.println(a17 + " " + a18);
		 
		 //2023년 12월 11시 55분
		 System.out.println(now.get(Calendar.YEAR) + "년" + (now.get(Calendar.MONDAY)+1 + "월"));
	}

}
