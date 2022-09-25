void main(List<String> args) {
  print("life");
  Future.delayed(const Duration(seconds: 2), () {
    print("never flat");
  });
  print("is");
}
