package javaApp5.ch17.sec01;

import java.util.*;
import java.util.stream.*;

public class StreamEx01 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		// ��Ʈ�� - �帣��
		// ��Ʈ�� - �÷��� �Ǵ� �迪 --> �������� ��Ʈ�� --> �߰��ܰ�(����, ���ε�) - �������� --> ���� ��Ʈ��
//		
//		// 1�ܰ� �÷��� �Ǵ� �迭
//		List<Student> list =	Arrays.asList(new Student("ȫ�浿", 10),
//							  new Student("�ſ��", 20),
//							  new Student("���̼�", 30));
//		
//		// 2�ܰ谡 ����� (�������� ��Ʈ��)
//		Stream<Student> studenStream = list.stream();
//		
//		// 3�ܰ� ������ ������ ���� �߰��ܰ�(����, ���ε�)
//		//int applyAsInt(T value);
//		IntStream scoreStream = studenStream.mapToInt(  student -> student.getScore());
//		
//		// 4�ܰ� ������ ��� ���ϱ� (���� ��Ʈ��)
//		double avg = scoreStream.average().getAsDouble();
//		
//		System.out.println(avg);
		
		// 1�ܰ� �÷��� �Ǵ� �迭
		List<Student> list =	Arrays.asList(new Student("ȫ�浿", 10),
							  new Student("�ſ��", 20),
							  new Student("���̼�", 30));
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