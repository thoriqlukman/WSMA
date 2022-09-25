import 'lingkaran.dart';

void main(List<String> args) {
  lingkaran A;
  double luaslingkaran;

  A = new lingkaran();
  A.setr(5.0);
  luaslingkaran = A.hitungLuas();
  print(luaslingkaran);
}
