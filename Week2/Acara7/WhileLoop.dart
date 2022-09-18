void main() {
  print("1");
  var flag = 1;
  while (flag < 10) {
    print("iterasi ke" + flag.toString());
    flag++;
  }

  print("2");
  var deret = 5;
  var jumlah = 0;
  while (deret > 0) {
    jumlah += deret;
    deret--;
    print('Jumlah saat ini: ' + jumlah.toString());
  }
  print(jumlah);
}
