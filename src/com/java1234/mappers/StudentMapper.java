package com.java1234.mappers;

import java.util.List;

import com.java1234.model.Student;

public interface StudentMapper {

	public int add(Student student);
	
	public int update(Student student);
	
	public int delete(Integer id);
	
	public Student findById(Integer id);
	
	public List<Student> find();
	
	public Student findStudentWithAddress(Integer id);
	
	public Student findByGradeId(Integer gradeId);
}
