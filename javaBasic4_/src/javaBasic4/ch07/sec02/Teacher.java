package javaBasic4.ch07.sec02;

public class Teacher extends Student {
	
	String haggwa;
	
	public void jeongong () {
		System.out.println("�����Ѵ�");
	}
	
	public void haggwa () {
		System.out.println("����ģ��");
	}
	
	public Teacher() {
		super ( "ȫ�浿", 30, "��ǻ�Ͱ���"); //�θ������ ȣ��
		System.out.println("�ڽ� Ŭ���� �� me");
	}
	public Teacher(String name, int age, String dept) {
		this.name = name;
		this.age = age;
		this.dept = dept;
	}
	

}
