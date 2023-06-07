import 'dart:io';

bool anagramOrNot({String? s1,String? s2}){
if(s1!.length != s2!.length){
  return false;
}

s1=s1.toLowerCase();
s2=s2.toLowerCase();
List<String> s1List = s1.split("");
List<String> s2List = s2.split("");
s1List.sort();
  s2List.sort();

  for (int i = 0; i < s1List.length; i++) {
    if (s1List[i] != s2List[i]) {
      return false;
    }
  }

  return true;
}

void main() {
stdout.write("enter the first word");

String word1 = stdin.readLineSync()!;
stdout.writeln();
stdout.write("enter the second word");

String word2 = stdin.readLineSync()!;
  if (anagramOrNot(s1: word1,s2:  word2)) {
    stdout.write("The words $word1 and $word2 are anagrams.");
  } else {
    stdout.write("The words $word1 and $word2 are not anagrams.");
  }
}
