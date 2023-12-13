package javaBasic4.ch07.sec02;

public class Teacher extends Student {
	
	String haggwa;
	
	public void jeongong () {
		System.out.println("공부한다");
	}
	
	public void haggwa () {
		System.out.println("가르친다");
	}
	
	public Teacher() {
		super ( "홍길동", 30, "컴퓨터공학"); //부모생성자 호출
		System.out.println("자식 클래스 나 me");
	}
	public Teacher(String name, int age, String dept) {
		this.name = name;
		this.age = age;
		this.dept = dept;
	}
	

}
