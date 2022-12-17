void main() {
  Car car1 = Car();
  car1.setColor = "rot";

  Car car2 = Car();
  car2.setColor = "blau";

  Car car3 = Car();
  car3.setColor = "grün";

  String colorFromCar = car1.color;

  car1.sayColor();
  car2.sayColor();
  car3.sayColor(); // mein zusatz

  car1.drive();
}
// getter und setter verwendet man nur für den Zugriff ob es öffentlich oder privat ist (_) und (set)

class Car {
  //! setter - kontrolliertes setzten des ertes
  set setColor(String color) {
    // platz für validierungen
    this._color = color;
  }

  //! getter
  String get color =>
      this._color; // kurzschreibweise => dieses zeichen gibt kein return zuruck
  /* String get clolor {
    platz für validierungen
    return this.color;
  }*/

  //! attribute
  late String
      _color; // late -> weise später einen wert zu    _das macht es privat beim getter der bodenstrich

  //! methoden
  void drive() {
    _legeGangEin();
    print("car is moving");
  }

  void _legeGangEin() {
    print("Gang 1");
  }

  void sayColor() {
    print(this._color);
  }
}
