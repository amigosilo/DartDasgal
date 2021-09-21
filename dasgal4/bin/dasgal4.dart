import 'dart:io';

bool leapYear(int year) {
  if (year % 400 == 0) {
    return true;
  } else if (year % 100 == 0) {
    return false;
  } else if (year % 4 == 0) {
    return true;
  } else {
    return false;
  }
}

void main(List<String> arguments) {
  print('Enter a year:');
  int? year = int.parse(stdin.readLineSync()!);

  print(leapYear(year) ? '$year is a leap year.' : '$year is not a leap year');
}
