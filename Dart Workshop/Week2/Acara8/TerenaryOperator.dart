import 'dart:io';

void main() {
  var input;
  print("apakah ingin menginstal aplikasi ini? y/n");
  input = stdin.readLineSync();
  input == "y"
      ? print("anda akan menginstall aplikasi dart")
      : print("Aborted");
}
