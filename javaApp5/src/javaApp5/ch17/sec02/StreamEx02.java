package javaApp5.ch17.sec02;

import java.util.ArrayList;
import java.util.List;

public class StreamEx02 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		//목표 : 중간 스트림 차리하는 방법 익히기
		
		List<String> list= new ArrayList<String>(); // 컬렉션
		list.add("사과");
		list.add("배");
		list.add("바나나");
		list.add("사과");
		list.add("사과");
		
		list.stream()
			.filter(t -> t.equals("사과"))
			.forEach(p->System.out.println(p));
		
		// 중복을 제거
		list.stream()
			.filter(t -> t.equals("사과" + "~~"))
			.distinct()
			.forEach(p->System.out.println(p));
		
		//매핑 : 다른것으로 바꾸어주는 것
		List<student> stList = new ArrayList<student>();
		stList.add (new student("홍길동1", 85, "010-123-4567", 0.5));
		stList.add (new student("홍길동2", 92, "010-123-4568", 1.2));
		stList.add (new student("홍길동3", 87, "010-123-4569", 0.8));
		stList.add (new student("홍길동4", 95, "010-123-4500", 0.4));
		
		// 스트림 만들기
		stList.stream()
				.mapToInt(t -> t.getScore())
				.forEach(p -> System.out.println(p));
		
		// 스트림 만들기 - 주소를 넣어서 전화번호 출력하기
				stList.stream()
						.map(t -> t.getPhone())
						.forEach(p -> System.out.println(p));
		// 스트림 만들기 - 주소를 넣어서 이름 출력하기
		stList.stream()
				.map(t -> t.getName())
				.forEach(p -> System.out.println(p));
		
		// 스트림 만들기 - 주소를 넣어서 시력 출력하기
				stList.stream()
						.mapToDouble(t -> t.getsight())
						.forEach(p -> System.out.println(p));
		
		
	}

}
class student {
	private String name;
	private int score;
	private String phone;
	private double sight; // 시력
	
	public student(String name, int score, String phone, double sight) {
		super();
		this.name = name;
		this.score = score;
		this.phone = phone;
		this.sight = sight;
	}
	public double getsight() {
		return sight;
	}
	public void setName(double sight) {
		this.sight = sight;
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
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	
	
}