import 'bangundatar.dart';

class lingkaran extends bangun_datar {
  late double phi, r;

  lingkaran(double phi, r) {
    this.phi = phi;
    this.r = r;
  }

  @override
  double h_keliling() {
    return phi * r * 2;
  }

  @override
  double h_luas() {
    return phi * r * r;
  }
}
