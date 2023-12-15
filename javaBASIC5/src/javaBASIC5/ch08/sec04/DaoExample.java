package javaBASIC5.ch08.sec04;


//Ȯ�ι��� 7��
public class DaoExample {
	public static void dbWork(DataAccessodject dao) {
		dao.select();
		dao.insert();
		dao.update();
		dao.delete();
	}

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		dbWork(new OracleDao());
		dbWork(new MySqlDao());
	}

}

interface DataAccessodject {
	void select();
	void insert();
	void update();
	void delete();
}

class OracleDao implements DataAccessodject{

	@Override
	public void select() {
		System.out.println("Oracle DB���� �˻�");
		
	}

	@Override
	public void insert() {
		System.out.println("Oracle DB���� ����");
		
	}

	@Override
	public void update() {
		System.out.println("Oracle DB���� ����");
		
	}

	@Override
	public void delete() {
		System.out.println("Oracle DB���� ����");
		
	}
	
}

class MySqlDao implements DataAccessodject {

	@Override
	public void select() {
		System.out.println("MySql DB���� �˻�");
		
	}

	@Override
	public void insert() {
		System.out.println("MySql DB���� ����");
		
	}

	@Override
	public void update() {
		System.out.println("MySql DB���� ����");
		
	}

	@Override
	public void delete() {
		System.out.println("MySql DB���� ����");
		
	}
	
}

