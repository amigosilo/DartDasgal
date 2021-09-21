import 'dart:io';
import 'dart:math';

bool armstrong(int num) {
  int exp = num.toString().length;
  int temp = num;
  int sum = 0;

  while (temp > 0) {
    sum += pow(temp % 10, exp).toInt();
    temp ~/= 10;
  }
  if (num == sum) {
    return true;
  }
  return false;
}

void main(List<String> arguments) {
  print('Enter a number:');
  int? num = int.parse(stdin.readLineSync()!);

  print(armstrong(num)
      ? 'The number is an Armstrong number'
      : 'The number is not an Armstrong number');
}
