import 'dart:io';
void main(){
Student alan = new Student();
alan.name="Alan";
alan.age=20;
alan.place="Alappuzha";
alan.personBio();

Student meera=Student();
meera.name="Meera";
meera.age=18;
meera.place="Ernakulam";
meera.personBio();
}
// It is not necessary to use "new" keyword while creating an object.
class Student{
  String name="";
  num age=0;
  String place="";

  void personBio(){
    print("Hello !...I am $name\n I am $age years old\n I am coming from $place");
    print("-----------------------------------------");
  }
}