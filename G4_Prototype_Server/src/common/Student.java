package common;

import java.io.Serializable;


public class Student implements Serializable {
	private static final long serialVersionUID = -1133128363482085515L;
	public String StudentID;
	public String StudentName;
	public String StatusMembership;
	public String Operation;
	public String Freeze;
	
	public Student(String studentID, String studentName, String statusMembership) {
		
		StudentID = studentID;
		StudentName = studentName;
		StatusMembership = statusMembership;
		
	}
	
	
	public Student(String studentID, String studentName, String statusMembership, String operation, String freeze) {
		
		StudentID = studentID;
		StudentName = studentName;
		StatusMembership = statusMembership;
		Operation = operation;
		Freeze = freeze;
	}


	
	public Student() {
		// TODO Auto-generated constructor stub
	}


	@Override
	public String toString() {
		return StudentName;
	}


}
