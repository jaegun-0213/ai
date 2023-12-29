package javaApp5.ch17.sec07;

import java.util.*;
import java.util.stream.Collectors;
import java.util.*;

public class StreamEx07 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		 List<Student> totalList = new ArrayList<Student>();
		 
		 totalList.add(new Student("홍길동", "남", 92));
		 totalList.add(new Student("김수영", "여", 84));
		 totalList.add(new Student("김자바", "남", 92));
		 totalList.add(new Student("오혜영", "여", 93));
		 
		 // 남학생만 리스트로 만들기
		 List<Student> maleList =
				 totalList.stream()
		 			.filter(t -> t.getSex().equals("남"))
		 			.collect(Collectors.toList() );
		 for (Student s : maleList) {
			 System.out.println(s.getName() + " " + s.getSex());
		 }

	}

}

class Student {
	private String name;
	private String sex;
	private Integer score;
	
	public Student(String name, String sex, Integer csore) {
		super();
		this.name = name;
		this.sex = sex;
		this.score = score;
		
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public Integer getCsore() {
		return score;
	}
	public void setCsore(Integer csore) {
		this.score = csore;
	}
	
	
}
