class lingkaran {
  late double phi = 3.14;
  late double r;
  void setr(double value) {
    if (value < 0) {
      value *= -1;
    }
    r = value;
  }

  double hitungLuas() {
    return this.phi * r * r;
  }
}
