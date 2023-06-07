import 'dart:io';
import 'dart:math';

abstract class Shape {
  double area();
}

class Rectangle extends Shape {
  double width;
  double height;

  Rectangle(this.width, this.height);

  @override
  double area() {
    return width * height;
  }
}

class Circle extends Shape {
  double radius;

  Circle(this.radius);

  @override
  double area() {
    return pi * pow(radius, 2);
  }
}

void main() {

  Rectangle rectangle = Rectangle(5, 3);
  double rectangleArea = rectangle.area();
  stdout.write('Rectangle Area: $rectangleArea');
stdout.writeln();
  Circle circle = Circle(2);
  double circleArea = circle.area();
  stdout.write('Circle Area: $circleArea');
}
