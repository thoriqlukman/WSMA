void main() {
  for (var angka = 1; angka < 10; angka++) {
    print('Iterasi ke-' + angka.toString());
  }

//2
  var jumlah = 0;
  for (var deret = 5; deret > 0; deret--) {
    jumlah += deret;
    print('Jumlah saat ini: ' + jumlah.toString());
  }
  print('Jumlah terakhir: ' + jumlah.toString());

//3
  for (var deret = 0; deret < 10; deret += 2) {
    print('Iterasi dengan Increment counter 2: ' + deret.toString());
  }
  print('-------------------------------');
  for (var deret = 15; deret > 0; deret -= 3) {
    print('Iterasi dengan Decrement counter : ' + deret.toString());
  }
}
