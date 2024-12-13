import 'dart:io';
void main(){

  Student niya=new Student("Niya C Anto",2,"niya@gmail.com",[10,20,15,20,18]);
  niya.printDetail();
}
class Student{
 late String name;
  late num rollno;
 late String email;
  late List<num> marks;

  Student(String name,num rollno,String email,List<num> marks){
    this.name=name;
    this.rollno=rollno;
    this.email=email;
    this.marks=marks;

  }

  void printDetail(){
    print("Details");
    print("-----------------");
    print("Name : "+this.name);
    print("Roll No. : "+this.rollno.toString());
    print("Email : "+this.email);
    print("Total Marks : "+markCalculator(this.marks).toString());
    print("-------------------");
  
  }

  num markCalculator(List<num> marks){
    num total=0;
    for (int i=0;i<marks.length;i++){
      total+=marks[i];
    }
    return total;
  }
}