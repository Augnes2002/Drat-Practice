void main(){
  String studName="Ameya";
  print(studName.isEmpty);
  print(studName.length);

  print(studName.toLowerCase());
  print(studName.toUpperCase());

  int num1=10;
  print(num1.isEven);
  print(num1.isOdd);
  print(num1.isNegative);

  double num2=10.99;
  print(num2.round());

  List<String> studRecord=["Ameya","Alan","Kaira"];
  print(studRecord);  
  print(studRecord.first);
  print(studRecord.length);
  List<int> numsList=[1,2,6,8];
  print(numsList);
  print(numsList.length);
  print(numsList.isEmpty);
  print(numsList.isNotEmpty);

  //Map theory

  Map<String,String> numMap={"p1":"ALP","p2":"EKM","p3":"KTM"};
  print(numMap);

  print(numMap.length);
  numMap.addAll({"p3":"MNR","p4":"TSR","p5":"PKD"});
  print(numMap);

  print(numMap.isNotEmpty);
  print(numMap.keys);
  print(numMap.values);

  numMap.clear();
  print(numMap);
}