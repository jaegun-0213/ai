package javaBASIC5.ch08.sec02;

public class SmartPhon implements RemoteContrn{

	private int volume;
	
	@Override
	public void turnOn() {
		System.out.println("핸드폰을 켭니다");
		defaultM();
		
	}

	@Override
	public void turnOff() {
		System.out.println("핸드폰을 끕니다");
		
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
			
			System.out.println("현재 스마트폰 볼륨은" + volume);
			
			
		}
		
	}


