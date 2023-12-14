package javaBasic4.ch07.sec02;

public class person {

	String name;
	int age;
	
	public void eat () {
		System.out.println("먹는다");
	}
	public void sleep () {
		System.out.println("잔다");
	}
	public person() {
		System.out.println("조상 부모클래스 클래스");
		
	}
	public person (String 이름, int 나이) {
		this.name = 이름;
		this.age = 나이;

	}}
	
