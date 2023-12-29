package javaApp5.ch17.sec04;

import java.util.*;
import java.util.*;

public class StreamEx04 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		// 744 page 요소 정렬하기

		List<Student> sList = new ArrayList<Student>();
		sList.add (new Student ("홍길동", 30));
		sList.add (new Student ("신용권", 10));
		sList.add (new Student ("유미선", 20));
		
		
		sList.stream()
				.sorted()
				.forEach(p -> System.out.println(p.getName() + " " +  p.getScore()));
		
	}

}

class Student implements Comparable<Student>{
	private String name;
	private int score;
	
	public Student(String name, int score) {
		super();
		this.name = name;
		this.score = score;
		
		
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getScore() {
		return score;
	}

	public void setScore(int score) {
		this.score = score;
	}

	@Override
	public int compareTo(Student o) {
		Integer s = Integer.valueOf(score); // 기본형 int를 인티제 객체로 변경함
		Integer os = Integer.valueOf(o.getScore());
		return s.compareTo(os);
	}
}