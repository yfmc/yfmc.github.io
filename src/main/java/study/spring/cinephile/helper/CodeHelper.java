package study.spring.cinephile.helper;

public class CodeHelper {
	
	// 싱글톤 생성 시작
	private static CodeHelper current = null;
	
	public static CodeHelper getInstance() {
		if(current == null) {
			current = new CodeHelper();
		}
		
		return current;
	}
	
	public static void freeInstance() {
		current = null;
	}
	
	private CodeHelper() {
		super();
	}
	//싱글톤 객체생성 끝
	
	public int random(int min, int max) {
		int num = (int) ((Math.random()*(max - min + 1)) + min);
		return num;
	}
}
