import 'dart:io';
import 'dart:math';

int darts(double x, double y) {
  int points;
  double dist;
  dist = sqrt(x * x + y * y);
  if (dist <= 1) {
    points = 10;
  } else if (dist <= 5) {
    points = 5;
  } else if (dist <= 10) {
    points = 1;
  } else {
    points = 0;
  }
  return points;
}

void main() {
  int pointsEarned;
  print("Enter the x coordinate:");
  double? x = double.parse(stdin.readLineSync()!);
  print("Enter the y coordinate:");
  double? y = double.parse(stdin.readLineSync()!);
  pointsEarned = darts(x, y);

  print("You have earned $pointsEarned points.");
}
