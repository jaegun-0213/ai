package javaBasic04.ch07.sec14;

public class DBmine {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Connect myConnect = new Connect();
		
		//����Ŭ
		myConnect.db = new Oracle();
		myConnect.dbrun();
		//mysql
		myConnect.db = new MySql();
		myConnect.dbrun();
		//����
		myConnect.db = new MongoDB();
		myConnect.dbrun();

	}

}
class Connect {
	//�ʵ带 �����ϴµ� �θ�Ÿ�� ����
	DB db;
	
	public void dbrun () {
		db.runDb();
	}
	
}