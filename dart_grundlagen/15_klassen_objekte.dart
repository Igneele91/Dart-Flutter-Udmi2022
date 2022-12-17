void main() {
  Car car1 = Car();
  car1.color = "rot";

  Car car2 = Car();
  car2.color = "blau";

  car1.sayColor(); // das löst rot aus
  car2.sayColor(); // das löst blau aus

  car1.drive();
}

class Car {
  //! attribute
  late String color;

  //! methoden
  void drive() {
    print("car is moving"); // das auto bewegt sich
  }

  void sayColor() {
    print(this.color);
  }
}
