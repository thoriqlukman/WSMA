import 'dart:io';

void main(List<String> args) {
  print("Selamat Datang di permainan Werewolf!");
  print("Masukkan Nama Anda dan Peram anda!");
  print("nama :");
  var Nama = stdin.readLineSync()!;
  print("peran :");
  var Peran = stdin.readLineSync()!;
  if (Nama.isEmpty) {
    print("Nama Tidak Boleh Kosong");
  } else if (Nama.isNotEmpty && Peran.isEmpty) {
    print("Halo ${Nama}, silahkan pilih peran anda :");
  } else if (Nama.isNotEmpty && Peran == "Penyihir") {
    print("Selamat datang di Dunia Werewolf, $Nama"
        "  Halo $Peran $Nama, kamu dapat melihat siapa yang menjadi werewolf!");
  } else if (Nama.isNotEmpty && Peran == "Guard") {
    print("Selamat datang di Dunia Werewolf, $Nama"
        "  Halo $Peran $Nama, kamu akan membantu melindungi temanmu dari serangan werewolf");
  } else if (Nama.isNotEmpty && Peran == "Werewolf") {
    print("Selamat datang di Dunia Werewolf, $Nama"
        "  Halo $Peran $Nama, Kamu akan memakan mangsa setiap malam!");
  } else {
    print("Salah pilihan");
  }
}
