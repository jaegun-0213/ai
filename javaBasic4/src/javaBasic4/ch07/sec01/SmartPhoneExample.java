package javaBasic4.ch07.sec01;

public class SmartPhoneExample {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		 Phon p = new Phon();
		 p.bell();
		 
		 p.sendVoice("�����?");
		 p.receiveVoice("����� �ʵ� �����?");
		 
		 SmartPhone sp = new SmartPhone();
		 sp.sendVoice("���� ���Ұž�?");
		 sp.receiveVoice("������ �����Ұž�");
		 sp.hangup();
		 
		 
		  SmartPhone sp2 = new SmartPhone ("������", "���");
		  
		  //�������� �������̰� ����ϱ�
		  System.out.println(sp2.model);
		  sp2.setwifi(true);
		  
		  if(sp2.wifi) {
			  System.out.println(sp2.model + "���������̰� �˴ϴ�");
		  } else {
			  	System.out.println(sp2.color + "�ڵ����� �������̰� �ȵ˴ϴ�");
		  }
		  
		  //�������� ����̰� ���� �︳�ϴ�.
		  System.out.println(sp2.model + "��" + sp2.color + "�̰�" );
		  sp2.bell();
		  
		  //�������� �޼����� �Խ��ϴ�. "�ڱ� : �ڵ������?"
		  System.out.println(sp2.model + "�� �޼����� �Խ��ϴ�.");
		  sp2.sendVoice("�ڵ��� ���?");
		  
		  // �θ�Ŭ�������� �ڽ��� �������� �ʵ�,�޼ҵ� ����ϱ�
		 /* �θ�Ŭ������ �ڽ��� ������� �� �� ����.
		  p.wait = true;
		  
		  p.setWifi(trus);
		  
		  p.internet(); */
	}

}
