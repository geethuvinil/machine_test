import 'dart:io';

class Student{
  String? name;
  int? age;
  double? marks;
  
Student({this.name,this.age,this.marks});
  String? getGrade(){
  if(marks! >= 90){
    return "A";
  } else if (marks! >= 80){
    return "B";
  }else if(marks! >= 70){
    return"C";
  } else if(marks! >= 60){
return "D";
  }else{
    return "F";
  }
  }
  void printDetails(){
    stdout.write("Name is $name");
    stdout.writeln();
    stdout.write("Age is $age");
    stdout.writeln();
    stdout.write("Mark is $marks");
    stdout.writeln();
    stdout.write("grade is ${getGrade()}");
    stdout.writeln();
  }
} 
void main(List<String> args) {
  List<Student> s =[
    Student(name: "Manu",age: 20,marks: 74),
    Student(name: "Ali",age: 14,marks: 12),
    Student(name: "Tom",age: 22,marks: 98)
  ];
  for (var i = 0; i < s.length; i++) {
    s[i].printDetails();
  }
}