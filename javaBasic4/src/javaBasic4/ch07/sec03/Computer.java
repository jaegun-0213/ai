package javaBasic4.ch07.sec03;

// �ڽ� Ŭ����
public class Computer extends Calculator {

	@Override
	public double areaCircle(double r) { //�θ��� �޼ҵ带 �ڽ��� ���ľ���
		System.out.println("Computer ��ü�� areaCircle() ����");
		return 2 * 3.14 * r; // ���ѷ� ���ϱ�
	}
}
