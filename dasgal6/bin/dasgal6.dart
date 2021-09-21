import 'dart:io';

void spaceAge(int sec) {
  int yearInSec = 31557600;
  List<double> planetYears = [
    0.2408467,
    0.61519726,
    1.0,
    1.8808158,
    11.862615,
    29.447498,
    84.016846,
    164.79132
  ];
  List<String> planets = [
    'Mercury',
    'Venus',
    'Earth',
    'Mars',
    'Jupiter',
    'Saturn',
    'Uranus',
    'Neptune'
  ];

  for (int i = 0; i < planetYears.length; i++) {
    print('Your age on ' +
        planets[i] +
        ' is ' +
        (sec / (planetYears[i] * yearInSec)).toStringAsFixed(2) +
        ' years');
  }
}

void main(List<String> arguments) {
  print('Enter your age in seconds:');
  int? sec = int.parse(stdin.readLineSync()!);
  spaceAge(sec);
}
