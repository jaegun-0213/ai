package javaBASIC6.ch09.sec05;

public class HomeEx {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		Home home = new Home();
		
		home.use1();
		
		home.use2();
		
		home.use3(new RemoteControl() {
			@Override
			public void turnOn() {
				System.out.println("������ �մϴ�");
				
			}
			@Override
			public void turnOff() {
				System.out.println("������ ���ϴ�");
				
			}
		});
		
	}

}
