package javaBASIC5.ch08.sec02;

// ������ �߻�޼ҵ�� �����Ѵ�

public interface RemoteContrn {

	
	//��� -  ������ �ʴ� ��, ������ �ٲ��� ���ϴ� ��
	final static int MAX_VOLUME = 10;
	final static int MIN_VOLUME = 0;
	
	// �߻�޼ҵ� ����
	void turnOn();
	void turnOff();
	void setVolume (int volume);
	//void qrRead();

	
	// �ڹٰ� ������ �Ǹ鼭 �߰� �� �޼ҵ�
	//����Ʈ �޼ҵ�
	default void defaultM() {
		int sum =0;
		System.out.println("QR�ڵ� �Է� �ޱ�");
		for(int i=0; i<10; i++) {
			sum+=privateM(i);
		}
		System.out.println(sum);
	}
 	// ���� �޼ҵ�
	static void staticM() {
		System.out.println("īī���� �����ޱ�");
		
	}
	//Private�޼ҵ� �������̽������� ����� �� �ִ� �޼ҵ� (�ܺ����ٺҰ�)
	private int privateM (int i) {
		return i+10;
	}
	
	
}
