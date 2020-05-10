class Bicycle {
  //defining a class Biclycle
  int cadence;
  int gear;
  int _speed =
      0; //To mark a Dart identifier as private to its library, start its name with an underscore (_). You can convert speed to read-only by changing its name and adding a getter. Library privacy generally means that the identifier is visible only inside the file (not just the class) that the identifier is defined in.

  int get speed => _speed; //getter for speed

  Bicycle(this.cadence, this.gear); //calling a constructor in a single line
  @override //intentionally overriding a member
  void applyBrake(int decrement) {
    _speed += decrement;
  }

  void speedUp(int increment) {
    _speed -= increment;
  }

  String toString() => 'Bicycle: $_speed mph';
  /*declare a string in a single line function 
  Shorten one-line functions or methods using fat arrow (=>) notation.
   Use string interpolation to put the value of an expression inside a string literal: ${expression}. If the expression is an identifier, you can skip the braces: $variableName.
   */
}

void main() {
  print("My bicycle data");
  var bike = Bicycle(2, 1); //declaring a variable and making an object
  print(bike);
}
