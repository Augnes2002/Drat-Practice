import 'dart:io';
void main(){
  print("Enter the month");
  int? num1=int.parse(stdin.readLineSync()!);
  if(num1==1){
    print("It's January!...");
  }
  else if(num1==2){
    print("It's February!...");
  }
  else if(num1==3){
    print("It's March!...");
  }
  else if(num1==4){
    print("It's April!...");
  }
  else if(num1==5){
    print("It's May!...");
  }
  else{
    print("Some other month in calendar");
  }
}
