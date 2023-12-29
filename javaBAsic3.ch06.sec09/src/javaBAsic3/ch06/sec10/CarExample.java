//package javaBAsic3.ch06.sec10;
//
//public class CarExample {
//
//	public static void main(String[] args) {
//		// TODO Auto-generated method stub
//		
//		//객체생성
//		Car myCar = new Car();
//		
//		System.out.println("회사명 : " + myCar.company);
//		System.out.println("모델명 : " + myCar.model);
//		System.out.println("컬러 : " + myCar.color);
//		System.out.println("최고속도 : " + myCar.maxspeed);
//		System.out.println("현재속도 : " + myCar.speed);
//		
//		
//		// 필드값 변경
//		myCar.speed = 60;
//		System.out.println("수정된속도 : " + myCar.speed);
//		
//		// 생성자로 필드에 값을 넣기
//		 Car sCar = new Car("삼성자동차", "sm3", "흰색", 370, 0);
//	
//		 	System.out.println("회사명 : " + sCar.company);
//			System.out.println("모델명 : " + sCar.model);
//			System.out.println("컬러 : " + sCar.color);
//			System.out.println("최고속도 : " + sCar.maxspeed);
//			System.out.println("현재속도 : " + sCar.speed);
//			
//			// 필드값 변경
//			myCar.speed = 100;
//			System.out.println("삼성자동차 수정된속도 : " + sCar.speed);
//
//			
//			Car car2 = new Car();
//			System.out.println("========================");
//			System.out.println("회사명 : " + car2.company);
//			System.out.println("모델명 : " + car2.model);
//			System.out.println("컬러 : " + car2.color);
//			System.out.println("최고속도 : " + car2.maxspeed);
//			System.out.println("현재속도 : " + car2.speed);
//			
//			
//			
//			
//			
//			Car car3 = new Car();
//			car3.setCompany("독일자동차");
//			car3.setCompany("BMW");
//			car3.setMaxspeed(300);
//			car3.setColor("검정색");
//			car3.setSpeed(0);
//			
//			System.out.println("========================");
//			System.out.println("회사명 : " + car3.getCompany() );
//			System.out.println("모델명 : " + car3.getModel());
//			System.out.println("컬러 : " + car3.getColor());
//			System.out.println("최고속도 : " + car3.getMaxspeed());
//			System.out.println("현재속도 : " + car3.getSpeed());
//	}
//
//}
