package javaBasic04.ch07.sec07;

public class Person {
	
	

	String name;
	int age;
	final static int MAX=10;
	
	public final void eat() {
		System.out.println("ÀÏ¹Ý ¹äÀ» ¸Ô´Â´Ù");
		//max = max - 50;
	}
	
	public Person() {
		// TODO Auto-generated constructor stub
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}
	
	
}

