void main() {
  print("vor"); // vor
  int ergebnis = addieren(x: 10, y: 11);
  print(ergebnis); // Das Plus ergebnis   21 ergebnis.
  int ergebnis2 = addieren(x: 10, y: ergebnis);
  print(ergebnis2); // Das ergebnis mit 10 gerechnet 32
  print("danach");
}

int addieren({required int x, required int y}) {
  int z = x + y;
  return z;
}
