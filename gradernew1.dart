import 'dart:io';
void main(){
  print("Welcome To Grade calculator");
  print("Enter the number of subjects");
  int?count=int.parse(stdin.readLineSync()!);
  List<num> markListVal=[];
  if(count>0&& count<=5){
    List<num> markListVal=markList(count);
    if(markListVal.isEmpty){
      print("The List is Empty. Exiting!...");
      return;
    }
    num totalPercentage=percentageFinder(markListVal,count);
  String gradeVal=gradeFinder(totalPercentage);

  print("RESULT");
  print("----------------");
  print("Percentage : $totalPercentage %\n Grade: $gradeVal");
  }
  else{
    print("Enter a number  greater than 0 and less thanor equal to 5 ");
  }

  
}
List<num> markList(int leng){
  List<num> marks=[];
  for(int i=0;i<leng;i++){
    print("Enter the mark of subject${i+1} :");
    int?markVal=int.parse(stdin.readLineSync()!);
    if(markVal!=null&&markVal<=100 && markVal>=0){
      marks.add(markVal);
    }
    else{
      print("Mark should be greater than or equal to zero and less than or equal to 100");
      return[];
    }
  }
  return marks;

}
 num percentageFinder(List<num> mList,int counter){
    num total=0;
    for(int i=0;i<mList.length;i++){
      total+=mList[i];
    }
    num outOff=counter*100;
    num percentage=((total/outOff)*100).round();
    print("Total : $total");
  return percentage;
 }

 String gradeFinder(num val){
  String grade="";
    if(val<=100 && val>=90){
          grade="A";
        }
        else if(val<90 && val>=80){
          grade="B";
        }
        else if(val<80 && val>=70){
          grade="C";
        }
        else if(val<70 && val>=60){
          grade="D";
        }
        else{
          grade="F";
        }
        return grade;
 }
