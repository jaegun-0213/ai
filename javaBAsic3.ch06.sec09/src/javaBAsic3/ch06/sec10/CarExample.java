//package javaBAsic3.ch06.sec10;
//
//public class CarExample {
//
//	public static void main(String[] args) {
//		// TODO Auto-generated method stub
//		
//		//��ü����
//		Car myCar = new Car();
//		
//		System.out.println("ȸ��� : " + myCar.company);
//		System.out.println("�𵨸� : " + myCar.model);
//		System.out.println("�÷� : " + myCar.color);
//		System.out.println("�ְ�ӵ� : " + myCar.maxspeed);
//		System.out.println("����ӵ� : " + myCar.speed);
//		
//		
//		// �ʵ尪 ����
//		myCar.speed = 60;
//		System.out.println("�����ȼӵ� : " + myCar.speed);
//		
//		// �����ڷ� �ʵ忡 ���� �ֱ�
//		 Car sCar = new Car("�Ｚ�ڵ���", "sm3", "���", 370, 0);
//	
//		 	System.out.println("ȸ��� : " + sCar.company);
//			System.out.println("�𵨸� : " + sCar.model);
//			System.out.println("�÷� : " + sCar.color);
//			System.out.println("�ְ�ӵ� : " + sCar.maxspeed);
//			System.out.println("����ӵ� : " + sCar.speed);
//			
//			// �ʵ尪 ����
//			myCar.speed = 100;
//			System.out.println("�Ｚ�ڵ��� �����ȼӵ� : " + sCar.speed);
//
//			
//			Car car2 = new Car();
//			System.out.println("========================");
//			System.out.println("ȸ��� : " + car2.company);
//			System.out.println("�𵨸� : " + car2.model);
//			System.out.println("�÷� : " + car2.color);
//			System.out.println("�ְ�ӵ� : " + car2.maxspeed);
//			System.out.println("����ӵ� : " + car2.speed);
//			
//			
//			
//			
//			
//			Car car3 = new Car();
//			car3.setCompany("�����ڵ���");
//			car3.setCompany("BMW");
//			car3.setMaxspeed(300);
//			car3.setColor("������");
//			car3.setSpeed(0);
//			
//			System.out.println("========================");
//			System.out.println("ȸ��� : " + car3.getCompany() );
//			System.out.println("�𵨸� : " + car3.getModel());
//			System.out.println("�÷� : " + car3.getColor());
//			System.out.println("�ְ�ӵ� : " + car3.getMaxspeed());
//			System.out.println("����ӵ� : " + car3.getSpeed());
//	}
//
//}
