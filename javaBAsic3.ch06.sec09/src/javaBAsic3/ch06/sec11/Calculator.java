package javaBAsic3.ch06.sec11;

public class Calculator {

	
	// �޼ҵ� ���� ~�Ѵ�, ~�ϱ� ����, ���ڱ�, ���, ����ϱ�
	// ���� [�������Ѵ�] ����Ÿ�� �޼ҵ�� ( [ �Ű����� ...] ) {}
	// ���Ŀ��� {} �������� ... ������
	
	void poweron() {
		System.out.println("������ �մϴ�.");
	}
	
	void poweroff () {
		System.out.println("������ ���ϴ�");
	}
	
	int plus(int x, int y) {
		int resuilt = x+y;
		return resuilt; // ������ �޼ҵ带 ȣ���� ������ ���� ���� �ǵ����־��
	}
	int plus(int x, int y, int c) {
		int result = x+y+c;
		return result; 
	}
	
	double divide (int x, int y) {
		double resuilt = (double) x / (double) y;
		return resuilt;
	}
}
