void main() {
  Car car1 = Car(color: "red", ps: 300);
}

class Car {
  Car({required this.color, required this.ps});

  final String color; // finale wert mitgeben
  final int ps; // finale wert mitgeben bei lini 7
  // konstrukturo erzeugt beim aufrufen einer methode ein objekt
  void drive() {
    print("car is moving");
  }
}
