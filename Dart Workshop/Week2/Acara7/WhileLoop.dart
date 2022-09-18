void main() {
  //1
  var flag = 1;
  while (flag < 10) {
    print("iterasi ke" + flag.toString());
    flag++; // Mengubah nilai flag dengan menambahkan 1
  }

//2
  var deret = 5;
  var jumlah = 0;
  while (deret > 0) {
    // Loop akan terus berjalan selama nilai deret masih di atas 0
    jumlah += deret; // Menambahkan nilai variable jumlah dengan angka deret
    deret--; // Mengubah nilai deret dengan mengurangi 1
    print('Jumlah saat ini: ' + jumlah.toString());
  }
  print(jumlah);
}
