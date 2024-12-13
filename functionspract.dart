import 'dart:io';
void main(){
  List<Map<String,dynamic>> students=[{"Name":"Augnes","class":6,"marks":[30,35,50,45,45]},{"Name":"Sapthasree","class":6,"marks":[30,35,30,45,45]},{"Name":"Ambili","class":6,"marks":[40,35,50,45,45]},];
  printDetails(students);
  
}
void printDetails(List<Map<String,dynamic>> students){
  for(int i=0;i<students.length;i++){
    print("Student Details");
    print("Name :"+students[i]["Name"]);
    print("Class :"+students[i]["class"].toString());
    print("Marks :"+findTotalMarks(students[i]["marks"]).toString());
    print("RESULT :"+passOrFail(findTotalMarks(students[i]["marks"])));
    print("--------------------------------------");
  }
}
num findTotalMarks(List<num> marks){
    num markTotal=0;
    for(int i=0;i<marks.length;i++){
      markTotal+=marks[i];
    }
  return markTotal;
}
String passOrFail(num mark){
  String status="";
  if(mark<50){
      status="Failed";
  }
  else{
      status="Passed";
  }
  return status;
}