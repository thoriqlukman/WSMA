import 'bangundatar.dart';

class persegi extends bangun_datar {
  late double sisi;

  persegi(double sisi) {
    this.sisi = sisi;
  }

  @override
  double h_keliling() {
    return sisi * 4;
  }

  @override
  double h_luas() {
    return sisi * sisi;
  }
}
