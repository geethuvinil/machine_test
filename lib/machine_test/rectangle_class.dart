import 'dart:io';

class Rectangle {
  double length;
  double width;

  Rectangle(this.length, this.width);

  double getArea() {
    return length * width;
  }
}

void main() {
  List<Rectangle> rectangles = [
    Rectangle(5, 3),
    Rectangle(2.5, 4),
    Rectangle(6, 2),
  ];

  double sumOfAreas = 0;
  int i = 0;
  while (i < rectangles.length) {
    double area = rectangles[i].getArea();
    sumOfAreas += area;
    i++;
  }

  stdout.write('Sum of Areas: $sumOfAreas');
}
