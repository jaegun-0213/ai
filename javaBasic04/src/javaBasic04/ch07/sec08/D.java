package javaBasic04.ch07.sec08;

import javaBasic04.ch07.sec07.A;

public class D extends A {
	
	public D() {
		super();
	}
	public void method1() {
		this.field = "value"; // �ٸ� ��Ű���� �ִ� AŬ���� �θ� �ʵ� �� �� �ִ�.
		this.method();
	}

//	public void method() {
//		A a = new A();
//		a.field="value"
//		a.method();
//	}
}
