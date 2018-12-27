package com.java1234.service;

import org.apache.ibatis.session.SqlSession;
import org.apache.log4j.Logger;

import com.java1234.mappers.StudentMapper;
import com.java1234.model.Student;
import com.java1234.util.SqlSessionFactoryUtil;

public class StudentTest {

	private static Logger logger=Logger.getLogger(StudentTest.class);
	
	public static void main(String[] args) {
		SqlSession sqlSession=SqlSessionFactoryUtil.openSession();
		StudentMapper studentMapper=sqlSession.getMapper(StudentMapper.class);
		Student student=new Student("李四",11);
		int result=studentMapper.add(student);
		sqlSession.commit();
		if(result>0){
			logger.info("添加成功！");
		}
	}
}
