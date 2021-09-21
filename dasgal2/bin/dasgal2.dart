import 'dart:io';

void raindrop(int num) {
  String result = '';
  int div = 2;
  while (div <= (num / 2)) {
    if (num % div == 0) {
      if (div == 3) {
        result += 'pling ';
      } else if (div == 5) {
        result += 'plang ';
      } else if (div == 7) {
        result += 'plong ';
      } else {
        result += '$div ';
      }
    }
    div++;
  }

  print(result);
}

void main() {
  print('Enter a number:');
  int? num = int.parse(stdin.readLineSync()!);

  raindrop(num);
}
