package javaApp2.ch15.sec07;

import java.util.TreeSet;

import javaApp2.ch15.sec06.treeSetEx;

public class comparebleEx {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		Person p1= new Person("ȫ�浿", 15);
		Person p2= new Person("���ڹ�", 55);
		Person p3= new Person("������", 31);
		
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
	
	// �̸� ������� Ʈ���� �޾��ֱ�
//	@Override
//	public int compareTo(Person o) {
//		int result = name.compareTo(o.name); // String Ŭ�������� �˾Ƽ� �����ش�
//		System.out.println(result + "@@@");
//		return result;
//		}
	
	// ���� ������� Ʈ���� �޾��ֱ�
	@Override
	public int compareTo(Person o) {
		// �� �˰����� ������ 0, ������ ����, ũ�� ����� �����Ѵ�
		if (age == o.age) return 0;
		else if (age < o.age) return -1; 
		else return 1;
	}
	
	
	
}