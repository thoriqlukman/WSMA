import 'bangundatar.dart';
import 'persegi.dart';
import 'lingkaran.dart';
import 'segitiga.dart';

void main(List<String> args) {
  bangun_datar bt = bangun_datar();
  persegi rect = persegi(4.0);
  lingkaran oval = lingkaran(3.14, 7.0);
  segitiga triangle = segitiga(0.5, 20.0, 30.0);

  print("Keliling Persegi : ${rect.h_keliling()}");
  print("Luas Lingkaran : ${oval.h_luas()}");
  // print("Luas segitga : ${triangle.h_luas()}");
}
