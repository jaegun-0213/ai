package javaApp5.ch17.sec01;

import java.util.*;
import java.util.stream.*;

public class StreamEx01 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		// 스트림 - 흐르다
		// 스트림 - 컬렉션 또는 배역 --> 오리지널 스트림 --> 중간단게(필터, 매핑등) - 생략가능 --> 최종 스트림
//		
//		// 1단게 컬렉션 또는 배열
//		List<Student> list =	Arrays.asList(new Student("홍길동", 10),
//							  new Student("신용권", 20),
//							  new Student("유미선", 30));
//		
//		// 2단계가 수행됨 (오리지널 스트림)
//		Stream<Student> studenStream = list.stream();
//		
//		// 3단계 점수를 가지고 오기 중간단게(필터, 매핑등)
//		//int applyAsInt(T value);
//		IntStream scoreStream = studenStream.mapToInt(  student -> student.getScore());
//		
//		// 4단계 점수의 평균 구하기 (최종 스트림)
//		double avg = scoreStream.average().getAsDouble();
//		
//		System.out.println(avg);
		
		// 1단게 컬렉션 또는 배열
		List<Student> list =	Arrays.asList(new Student("홍길동", 10),
							  new Student("신용권", 20),
							  new Student("유미선", 30));
		double avg =
					list.stream()
						.mapToInt(  student -> student.getScore() )
						.average().getAsDouble();
						System.out.println(avg);

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
	public int getScore() {
		return score;
	}
	
}