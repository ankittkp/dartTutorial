/* Pass functions as arguments.
 * Assign a function to a variable.
 * Deconstruct a function that takes multiple arguments into a sequence of functions that each take a single argument (also called currying).
 * Create a nameless function that can be used as a constant value (also called a lambda expression;
 */
class WannabeFunction {
  call(String a, String b, String c) => '$a $b $c!';
}
/* You can also call an instance of a Dart class as if it were a function, as in this example.
 */
/*main() {
  var wf = new WannabeFunction();
  var out = wf("Hi","there,","gang");
  print('$out');
}*/

/* The following example uses imperative (not functional-style) code:
 
String scream(int length) => "A${'a' * length}h!";

main() {
  final values = [1, 2, 3, 5, 10, 50];
  for (var length in values) {
    print(scream(length));
  }
  
  */
//Convert imperative code to functional
// Remove the imperative for() {...} loop in main() and replace it with a single line of code that uses method chaining:

String scream(int length) => "A${'a' * length}h!";

main() {
  final values = [1, 2, 3, 5, 10, 50];
  //values.map(scream).forEach(print);
  values.skip(1).take(3).map(scream).forEach(print);
}
/*
 skip(1)skips the first value, 1, in the values list literal.
take(3)gets the next 3 values—2, 3, and 5—in the values list literal.
The remaining values are skipped.*/
//The core List and Iterable classes support fold(), where(), join(), skip(), and more. Dart also has built-in support for maps and sets.
