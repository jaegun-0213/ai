package javabasic4.ch07.sec16;

public class Ȯ�ι���7�� {

	
	public static void action(A a) {
		a.methond1();
		if ( a instanceof C) {
			((C) a).methond2();
		}
	}
	
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		// 10�� �� : �߻�Ŭ������ ��ӹ޾����ϱ� �߻� �޼ҵ带 �������ؾ��Ѵ�
		
		MainMainActvity m = new MainMainActvity();
		m.onCreate();
		
		// 11��
		action(new A());
		action(new B());
		action(new C());

	}

}
