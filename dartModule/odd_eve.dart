import 'dart:io';

void main() {
  int i = 1;
  int num, even = 0, e = 0, o = 0;
  for (i = 1; i <= 5; i++) {
    print("enter num");
    num = int.parse(stdin.readLineSync()!);
    if (num % 2 == 0) {
      // even = num;
      // print("even: $even");
      e++;
    } else {
      o++;
    }
  }
  print("even:$e");
  print("odd:$o");
}
