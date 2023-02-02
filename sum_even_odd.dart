//sum of even odd number
import 'dart:io';

void main() {
  int i = 1;
  int num, even = 0, e = 0, o = 0, esum = 0, osum = 0;
  for (i = 1; i <= 5; i++) {
    print("enter num");
    num = int.parse(stdin.readLineSync()!);
    if (num % 2 == 0) {
      esum += num;
    } else {
      osum += num;
    }
  }
  print("sum of even number: $esum");
  print("sum of odd number: $osum");
}
