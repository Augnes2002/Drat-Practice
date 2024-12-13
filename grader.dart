import 'dart:io';
void main(){
  print("Welcome to grade calculator");
  List<int> markList=[];
  print("Enter the number of subjects : ");
  int? l= int.parse(stdin.readLineSync()!);
  int totMarks=(l*100);
  if(l>0&& l<=10){
      print("Enter the marks ");
      for(int i=0;i<l;i++){
        print("Enter the mark of subject ${i+1} :");
        int? mark=int.parse(stdin.readLineSync()!);
        if(mark<0){
          print("Marks should be greater than 0");
          break;
        }
        else if(mark>100){
          print("Marks should be less than 100");
          break;
        }
        else{
          markList.add(mark);
        }
      }
  }
    int markListLength=markList.length;

    if(markListLength==l){
        int total=0;
      for(int i=0;i<markList.length;i++){
        total+=markList[i];
      }
    num percentage=((total/totMarks)*100).round();
      
      print("RESULT");
      if(percentage<=100 && percentage>=90){
        print("""Marks : $total\n Percentage:$percentage \n Grade:A""");
      }
      else if(percentage<90 && percentage>=80){
        print("""Marks : $total\n Percentage:$percentage \n Grade:B""");
      }
      else if(percentage<80 && percentage>=70){
        print("""Marks : $total\n Percentage:$percentage \n Grade:C""");
      }
      else if(percentage<70 && percentage>=60){
        print("""Marks : $total\n Percentage:$percentage \n Grade:D""");
      }
      else{
        print("""Marks : $total\n Percentage:$percentage \n Grade:F""");
      }
    }

}

    
  
