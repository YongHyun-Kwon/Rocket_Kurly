package kr.co.rocketkurly.cust.dao;

import java.io.IOException;
import java.io.Reader;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class MyBatisFramework {

	private static MyBatisFramework mbf;
	private static SqlSessionFactory ssf;

	private MyBatisFramework() {

		org.apache.ibatis.logging.LogFactory.useLog4JLogging();

	}// MyBatisFramwork

	public static MyBatisFramework getInstance() {

		if (mbf == null) {

			mbf = new MyBatisFramework();

		} // end if

		return mbf;

	}// getInstance

	private SqlSessionFactory getSqlSessionFactory() throws IOException {

		if (ssf == null) {

			Reader reader = null;

			try {

				reader = Resources.getResourceAsReader("kr/co/rocketkurly/cust/dao/SqlMapConfig.xml");

				ssf = new SqlSessionFactoryBuilder().build(reader);

			} finally {

				if (reader != null) {

					reader.close();

				} // end if

			} // end finally

		} // end if

		return ssf;

	}// getSqlSessionFactory

	public SqlSession getMyBatisHandler() {

		SqlSession ss = null;

		try {

			ss = getSqlSessionFactory().openSession();

		} catch (IOException e) {

			e.printStackTrace();

		} // end catch

		return ss;

	}// getMyBatisHandler
	
	public static void main(String[] args) {
		
		SqlSession ss = MyBatisFramework.getInstance().getMyBatisHandler();
		
		System.out.println(ss);
	}

}// class
