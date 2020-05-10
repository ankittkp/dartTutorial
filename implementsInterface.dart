import 'dart:math';

abstract class Shape {
  factory Shape(String type) {
    if (type == 'circle') return Circle(2);
    if (type == 'square') return Square(2);
    throw 'Can\'t create $type.';
  }
  num get area;
}
//The Dart language doesn't include an interface keyword because every class defines an interface.
class CircleMock implements Circle {
  num area;
  num radius;
}
//Even though the CircleMock class doesn't define any behaviors, it's valid Dart—the analyzer raises no errors.
//The area instance variable of CircleMock implements the area getter of Circle.

class Circle implements Shape {
  final num radius;
  Circle(this.radius);
  num get area => pi * pow(radius, 2);
}

class Square implements Shape {
  final num side;
  Square(this.side);
  num get area => pow(side, 2);
}

main() {
  final circle = Shape('circle');
  final square = Shape('square');
  print(circle.area);
  print(square.area);
}