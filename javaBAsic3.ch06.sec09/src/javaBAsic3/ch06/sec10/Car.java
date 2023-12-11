package javaBAsic3.ch06.sec10;

public class Car {

	String company = "현대자동차";
	String model = "그랜저";
	String color = "검정색";
	int maxspeed = 350;
	boolean start;
	int speed;
	
	
	public Car() {
		this("현대자동차", "소나타");
	}
	
	
	public Car(String company, String model) {
		this("검정", 350, 0);
		this.company = company;
		this.model = model;
		
	}


	public Car(String color, int maxspeed, int speed) {
		
		this.color = color;
		this.maxspeed = maxspeed;
		this.speed = speed;
	}


	public Car(String company, String model, String color, int maxspeed, boolean start, int speed) {
		super();
		this.company = company;
		this.model = model;
		this.color = color;
		this.maxspeed = maxspeed;
		this.start = start;
		this.speed = speed;
	}


	public String getCompany() {
		return company;
	}


	public void setCompany(String company) {
		this.company = company;
	}


	public String getModel() {
		return model;
	}


	public void setModel(String model) {
		this.model = model;
	}


	public String getColor() {
		return color;
	}


	public void setColor(String color) {
		this.color = color;
	}


	public int getMaxspeed() {
		return maxspeed;
	}


	public void setMaxspeed(int maxspeed) {
		this.maxspeed = maxspeed;
	}


	public boolean isStart() {
		return start;
	}


	public void setStart(boolean start) {
		this.start = start;
	}


	public int getSpeed() {
		return speed;
	}


	public void setSpeed(int speed) {
		this.speed = speed;
	}
	
	
	
	
}
