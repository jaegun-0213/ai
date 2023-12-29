package javaApp5.ch17.sec05;

import java.util.*;
import java.util.*;

public class StreamEx05 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		// 744 page 요소 정렬하기

		List<Student> sList = new ArrayList<Student>();
		sList.add (new Student ("홍길동", 30));
		sList.add (new Student ("신용권", 10));
		sList.add (new Student ("유미선", 20));
		
		
		sList.stream()
				.sorted( new StudentCom())
				.forEach(p -> System.out.println(p.getName() + " " +  p.getScore()));
		
		
		
	}

}

class StudentCom implements Comparator<Student> {

	@Override
	public int compare(Student o1, Student o2) {
		
		Integer o1S = Integer.valueOf(o1.getScore()); // 30
		Integer o2S = Integer.valueOf(o2.getScore()); // 10
		
		return o1S.compareTo(o2S);
	}
	
}

class Student {
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

}