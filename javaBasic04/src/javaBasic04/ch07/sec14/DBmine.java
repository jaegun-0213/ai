package javaBasic04.ch07.sec14;

public class DBmine {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Connect myConnect = new Connect();
		
		//오라클
		myConnect.db = new Oracle();
		myConnect.dbrun();
		//mysql
		myConnect.db = new MySql();
		myConnect.dbrun();
		//몽고
		myConnect.db = new MongoDB();
		myConnect.dbrun();

	}

}
class Connect {
	//필드를 선언하는데 부모타입 선언
	DB db;
	
	public void dbrun () {
		db.runDb();
	}
	
}