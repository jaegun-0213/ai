package javaBASIC5.ch08.sec04;


//확인문제 7번
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
		System.out.println("Oracle DB에서 검색");
		
	}

	@Override
	public void insert() {
		System.out.println("Oracle DB에서 삽입");
		
	}

	@Override
	public void update() {
		System.out.println("Oracle DB에서 수정");
		
	}

	@Override
	public void delete() {
		System.out.println("Oracle DB에서 삭제");
		
	}
	
}

class MySqlDao implements DataAccessodject {

	@Override
	public void select() {
		System.out.println("MySql DB에서 검색");
		
	}

	@Override
	public void insert() {
		System.out.println("MySql DB에서 삽입");
		
	}

	@Override
	public void update() {
		System.out.println("MySql DB에서 수정");
		
	}

	@Override
	public void delete() {
		System.out.println("MySql DB에서 삭제");
		
	}
	
}

