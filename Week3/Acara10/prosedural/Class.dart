class segitiga {
  late double setengah;
  late double alas;
  late double tinggi;

  double luas() {
    return this.setengah * alas * tinggi;
  }
}

void main() {
  segitiga sgt;
  double luasA;

  sgt = new segitiga();
  sgt.setengah = 0.5;
  sgt.alas = 20.0;
  sgt.tinggi = 30.0;

  luasA = sgt.luas();
  print(luasA);
}
