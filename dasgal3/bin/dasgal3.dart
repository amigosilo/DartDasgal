import 'dart:io';

bool isogram(String str) {
  str.toLowerCase();
  str = str.replaceAll(RegExp(r'[^a-z]'), '');
  List<String> ls = str.split('');
  ls.sort();

  for (int i = 0; i < ls.length - 1; i++) {
    if (ls[i] == ls[i + 1]) {
      return false;
    }
  }
  return true;
}

void main(List<String> arguments) {
  print('Enter a word or sentence:');
  String? str = stdin.readLineSync()!;
  print(isogram(str)
      ? 'The sentence/word is an isogram'
      : 'The sentence/word is not an isogram');
}
