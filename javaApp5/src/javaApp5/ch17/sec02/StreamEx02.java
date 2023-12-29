package javaApp5.ch17.sec02;

import java.util.ArrayList;
import java.util.List;

public class StreamEx02 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		//��ǥ : �߰� ��Ʈ�� �����ϴ� ��� ������
		
		List<String> list= new ArrayList<String>(); // �÷���
		list.add("���");
		list.add("��");
		list.add("�ٳ���");
		list.add("���");
		list.add("���");
		
		list.stream()
			.filter(t -> t.equals("���"))
			.forEach(p->System.out.println(p));
		
		// �ߺ��� ����
		list.stream()
			.filter(t -> t.equals("���" + "~~"))
			.distinct()
			.forEach(p->System.out.println(p));
		
		//���� : �ٸ������� �ٲپ��ִ� ��
		List<student> stList = new ArrayList<student>();
		stList.add (new student("ȫ�浿1", 85, "010-123-4567", 0.5));
		stList.add (new student("ȫ�浿2", 92, "010-123-4568", 1.2));
		stList.add (new student("ȫ�浿3", 87, "010-123-4569", 0.8));
		stList.add (new student("ȫ�浿4", 95, "010-123-4500", 0.4));
		
		// ��Ʈ�� �����
		stList.stream()
				.mapToInt(t -> t.getScore())
				.forEach(p -> System.out.println(p));
		
		// ��Ʈ�� ����� - �ּҸ� �־ ��ȭ��ȣ ����ϱ�
				stList.stream()
						.map(t -> t.getPhone())
						.forEach(p -> System.out.println(p));
		// ��Ʈ�� ����� - �ּҸ� �־ �̸� ����ϱ�
		stList.stream()
				.map(t -> t.getName())
				.forEach(p -> System.out.println(p));
		
		// ��Ʈ�� ����� - �ּҸ� �־ �÷� ����ϱ�
				stList.stream()
						.mapToDouble(t -> t.getsight())
						.forEach(p -> System.out.println(p));
		
		
	}

}
class student {
	private String name;
	private int score;
	private String phone;
	private double sight; // �÷�
	
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