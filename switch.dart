import 'dart:io';
void main(){
  bool y=true;
  print("-------Welcome to day Checker------");
  while(y){
    print("Enter the day number : ");
    int? day=int.parse(stdin.readLineSync()!);
    if(day==null || day<=0 ){
      print("Invalid !...\n The number should be grater than 0.");
    }
    else{
      switch(day){
        case 1:
            print("It's Sunday");
            break;
        case 2:
            print("It's Monday");
            break;
        case 3:
            print("It's Tuesday");
            break;
        case 4:
            print("It's Wednesday");
            break;
        case 5:
            print("It's Thursday");
            break;
        case 6:
            print("It's Friday");
            break; 
        case 7:
            print("It's Saturday");
            break; 
        default:
            print("Invalid Choice");
            break;
      }
      print("Do you want to continue (y/n) :");
      String?ask=stdin.readLineSync();

      if(ask!="y"){
        print("Thank you for using day checker..");
        y=false;
      }
    }
  }
}