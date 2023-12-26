package javaApp2.ch15.sec07;

import java.util.TreeSet;

import javaApp2.ch15.sec06.treeSetEx;

public class comparebleEx {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		Person p1= new Person("홍길동", 15);
		Person p2= new Person("김자바", 55);
		Person p3= new Person("박지원", 31);
		
		TreeSet<Person> t1 = new TreeSet<Person>();
		t1.add(p1);
		t1.add(p2);
		t1.add(p3);
		
		for (Person p : t1) {
			System.out.println(p);
		}
		

	}

}

class Person implements Comparable<Person>{
	
	String name;
	Integer age;
	
	public Person(String name, Integer age) {
		this.name = name;
		this.age = age;
	}
	@Override
	public String toString() {
		// TODO Auto-generated method stub
		return name + " " + age;
	}
	
	// 이름 순서대로 트리에 달아주기
//	@Override
//	public int compareTo(Person o) {
//		int result = name.compareTo(o.name); // String 클래스에서 알아서 비교해준다
//		System.out.println(result + "@@@");
//		return result;
//		}
	
	// 나이 순서대로 트리에 달아주기
	@Override
	public int compareTo(Person o) {
		// 비교 알고리즘은 같으면 0, 작으면 음수, 크면 양수로 리턴한다
		if (age == o.age) return 0;
		else if (age < o.age) return -1; 
		else return 1;
	}
	
	
	
}