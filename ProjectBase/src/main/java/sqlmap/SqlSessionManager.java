package sqlmap;

import java.io.IOException;
import java.io.Reader;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

//이 파일은 자바와 디비를 연결시키는 클래스
public class SqlSessionManager {
	//sqlSession 객체가 디비 접속 정보를 갖게 됨.
	  public static SqlSessionFactory sqlSession;

	    static {
	        String resource = "sqlmap/configuration.xml";
	        Reader reader;

	        try {
	            reader = Resources.getResourceAsReader( resource );
	            sqlSession = new SqlSessionFactoryBuilder().build( reader );
	        } catch (IOException e) {
	            e.printStackTrace();
	        }
	    }

	    public static SqlSessionFactory getSqlSession() {
	        return sqlSession;
	    }
}










