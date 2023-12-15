package javaBASIC5.ch08.sec05;

public class Example {
	
	public static void action(A a) {
		a.metohd1();
		if (a instanceof C) {
			C c = (C) a;
			System.out.println("++");
			c.method2();
		}
	public static void main(String[] args) {
			action(new B());
			action(new C());
		}
	}
}
interface A{
	public void method1();
}
class B implements A{

	@Override
	public void method1() {
		// TODO Auto-generated method stub
		
	}
	
}