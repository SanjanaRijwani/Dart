//count even odd number
import 'dart:io';

void main() {
  int i = 1;
  int marks, count = 1, sno = 0, pass = 0, fail = 0;
  for (i = 1; i <= 5; i++) {
    sno = count++;
    print("Enter marks for subject$sno");
    marks = int.parse(stdin.readLineSync()!);
    if (marks >= 35 && marks <= 100) {
      print("Paas");
      pass++;
    } else if (marks < 35 && marks < 100) {
      print("Fail");
      fail++;
    } else {
      print("invalid output");
    }
  }
  print("Number of passing Subject: $pass");
  print("Number of Fail subject: $fail");
}
