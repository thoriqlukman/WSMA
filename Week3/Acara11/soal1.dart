void main(List<String> args) async {
  var h = Human();
  print("Luffy");
  print("Zoro");
  print("Killer");
  print(h.nama);
  print("name 3:");
  h.getDataAsync();
}

class Human {
  String nama = "nama character one piece";
  Future<void> getDataAsync() async {
    await Future.delayed(Duration(seconds: 3));
    nama = "hilmi";
    print(nama);
    print("Get data [done]");
  }
}
