package javaBASIC5.ch08.sec02;

public class SmartPhon implements RemoteContrn{

	private int volume;
	
	@Override
	public void turnOn() {
		System.out.println("�ڵ����� �մϴ�");
		defaultM();
		
	}

	@Override
	public void turnOff() {
		System.out.println("�ڵ����� ���ϴ�");
		
	}

	@Override
	public void setVolume(int volume) {
			if (volume>RemoteContrn.MAX_VOLUME) {
				this.volume = RemoteContrn.MAX_VOLUME;
			} else if (volume>RemoteContrn.MIN_VOLUME) {
				this.volume = RemoteContrn.MIN_VOLUME;
			}else {
				this.volume = volume;
			}
			
			System.out.println("���� ����Ʈ�� ������" + volume);
			
			
		}
		
	}


