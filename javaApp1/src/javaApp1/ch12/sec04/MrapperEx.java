package javaApp1.ch12.sec04;

public class MrapperEx {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		// 자료형 기본형 byte char int long boolean, float double 참조형 String 클래스의 변수
		// 기본형은 클래스가 아니므로 미리 만들어진 메소드가 없다. 그래서 기본형 자료형을 클래스 만들어 둔게 있다 - 포장클래스
		//박싱 기본횽 ---> 객체형, 언박싱 객체 ---> 기본형
		
		Integer a = 10;
		Integer a1 = new Integer(10);
		String as = a.toString(); // 숫자를 문자형으로
		
		 double da = a.doubleValue();
		 System.out.println(da);
		 System.out.println(a.MIN_VALUE);
		 System.out.println(a.SIZE);
		 
	
		 Double d = 3.14;
		 Double d1= new Double(3.14);
		 String ds = d.toString();
		 
		 System.out.println(d.MAX_VALUE);
		 System.out.println(d.SIZE);
		 
		 //10.1 , 5.4 큰값
		 System.out.println(d.max(10.1, 5.4));
		 
	}

}
