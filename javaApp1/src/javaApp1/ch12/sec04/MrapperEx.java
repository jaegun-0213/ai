package javaApp1.ch12.sec04;

public class MrapperEx {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		// �ڷ��� �⺻�� byte char int long boolean, float double ������ String Ŭ������ ����
		// �⺻���� Ŭ������ �ƴϹǷ� �̸� ������� �޼ҵ尡 ����. �׷��� �⺻�� �ڷ����� Ŭ���� ����� �а� �ִ� - ����Ŭ����
		//�ڽ� �⺻�O ---> ��ü��, ��ڽ� ��ü ---> �⺻��
		
		Integer a = 10;
		Integer a1 = new Integer(10);
		String as = a.toString(); // ���ڸ� ����������
		
		 double da = a.doubleValue();
		 System.out.println(da);
		 System.out.println(a.MIN_VALUE);
		 System.out.println(a.SIZE);
		 
	
		 Double d = 3.14;
		 Double d1= new Double(3.14);
		 String ds = d.toString();
		 
		 System.out.println(d.MAX_VALUE);
		 System.out.println(d.SIZE);
		 
		 //10.1 , 5.4 ū��
		 System.out.println(d.max(10.1, 5.4));
		 
	}

}
