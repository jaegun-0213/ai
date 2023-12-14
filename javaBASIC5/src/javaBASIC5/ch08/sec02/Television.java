package javaBASIC5.ch08.sec02;

public class Television implements RemoteContrn{

	private int  volume;
	
	@Override
	public void turnOn() {
		System.out.println("TV�� ŵ�ϴ�");
		
	}

	@Override
	public void turnOff() {
		System.out.println("TV�� ���ϴ�");
		
	}

	@Override
	public void setVolume(int volum) {
		if (volum>RemoteContrn.MAX_VOLUME) {
			this.volume = RemoteContrn.MAX_VOLUME;
		} else if (volum>RemoteContrn.MIN_VOLUME) {
			this.volume = RemoteContrn.MIN_VOLUME;
		}else {
			this.volume = volum;
		}
		
		System.out.println("���� TV ������" + volum);
		
		
	}

}
