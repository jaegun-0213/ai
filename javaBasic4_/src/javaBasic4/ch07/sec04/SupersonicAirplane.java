package javaBasic4.ch07.sec04;

public class SupersonicAirplane extends Airplane {

	//상수선언
	public static final int NORMAL = 1;
	public static final int SUPERSONIC = 2;
	public static final int ROUND = 3;
	public static final int SLOW = 4;
	
	public int flyMode = NORMAL;
	//상태필드선
@Override
public void fly() {
     if(flyMode == SUPERSONIC) {
		System.out.println("초음속 비행합니다");
	} else if (flyMode == NORMAL) {
		System.out.println("일반 비행합니다.");
	} else if (flyMode == ROUND) {
		System.out.println("회전 비행합니다.");
	} else if (flyMode == SLOW) {
		System.out.println("천천히 비행합니다.");
	}
     
		super.fly();
		}
		
	}

