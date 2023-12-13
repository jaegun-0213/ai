package javaBasic4.ch07.sec02;

//자식 클래스 하위 클래스
public class Student extends person {

	String dept;
	
	public void study () {
		System.out.println("공부한다");
	}
	
	public Student() {
		System.out.println("부모클래스 아버지 클래스");
	}
	 
	public Student(String 이름, int 나이, String 전공) {
		System.out.println("부모클래스 아버지 클래스");
		this.name = 이름;
		this.age = 나이;
		this.dept = 전공;
		
		System.out.println("조상 부모클래스입니다");
	}
}
