class Bicycle { //defining a class Biclycle
  int cadence;
  int gear;
  int speed;
  Bicycle(this.cadence, this.gear, this.speed); //calling a constructor in a single line
}

void main() {
  print("My bicycle data");
  var bike = Bicycle(0, 1, 2); //declaring a variable and making an object
  print(bike);
}
