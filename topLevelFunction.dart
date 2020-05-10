import 'dart:math';

Shape shapeFactory(String type) {
  if (type == 'circle') return Circle(2);
  if (type == 'square') return Square(2);
  // To trigger exception, don't implement a check for 'triangle'.
  throw 'Can\'t create $type.';
}
/* If the function is called with any string other than 'circle' or 'square', it throws an exception.
 * The Dart SDK defines classes for many common exceptions, or you can extend the Exception class to create more specific exceptions or (as in this example) you can throw a string that describes the problem encountered.
 */

abstract class Shape {
  num get area;
}

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
  //final circle = Circle(2);
  //final square = Square(2);
  final circle = shapeFactory('circle');
  final square = shapeFactory('square');
  //print(Shape('triangle').area);
  print(circle.area);
  print(square.area);
}
/*
 Dart supports abstract classes. You can define multiple classes in one file. By convention, Dart library constants are lowerCamelCase (for example, pi instead of PI)
 The following code shows two getters that compute a value:
num get area => pi * pow(radius, 2); // Circle
num get area => pow(side, 2); // Square
*/