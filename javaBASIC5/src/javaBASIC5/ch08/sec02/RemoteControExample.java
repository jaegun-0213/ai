package javaBASIC5.ch08.sec02;

public class RemoteControExample {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		//변수 선언
		RemoteContrn rc;
		
		//텔레비전 객체생성
		
		rc = new Television();
		rc.turnOn();
		rc.setVolume(5);
		rc.turnOff();
		
		rc = new SmartPhon();
		rc.turnOn();
		rc.setVolume(7);
		rc.turnOff();
		
		rc.defaultM();
		RemoteContrn.staticM();
	}

}
