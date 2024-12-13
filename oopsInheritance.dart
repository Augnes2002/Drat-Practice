import 'dart:io';
void main(){

  Student maya=new Student("CUSAT","23030542","Gray","Maya",12,"MSc.Data Science",[20,20,15,14]);
  maya.printSchoolDetails();
  maya.printStudentDetails();
}
class School{
  late String schoolName;
  late String regNo;
  late String uniformSchool;

  School(String schoolName,String regNo,String uniformSchool){
    this.schoolName=schoolName;
    this.regNo=regNo;
    this.uniformSchool=uniformSchool;
  }
  void printSchoolDetails(){
    print("School Details");
    print("------------------");
    print("Name of the School : "+this.schoolName);
    print("Register No. : "+this.regNo);
    print("uniform Color : "+this.uniformSchool);
    print("------------------");
    
  }
}
class Student extends School{
  late String name;
  late num rollNo;
  late String standard;
  late List<num>markList;

  Student(String schoolName,String regNo,String uniformSchool,String name,num rollNo,String standard,List<num> markList): super(schoolName, regNo, uniformSchool){
    this.name=name;
    this.rollNo=rollNo;
    this.standard=standard;
    this.markList=markList;
  }

  void printStudentDetails(){
    print("Details");
    print("------------------");
    print("Name : "+this.name );
    print("Roll No. : "+this.rollNo.toString());
    print("Class :"+this.standard);
    print("Total Marks : "+ totalMarks(this.markList).toString());
    print("------------------");
  }

  num totalMarks(List<num> markList){
    num total=0;
    for(int i=0;i<markList.length;i++){
      total+=markList[i];
    }
    return total;
  }
}