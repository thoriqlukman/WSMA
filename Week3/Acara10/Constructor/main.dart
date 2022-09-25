import 'employee.dart';

void main(List<String> args) {
  var nim = new employee.id("E41210436");
  var nama = new employee.name("Thoriq Lukman Hakim");
  var jurusan = new employee.departement("Teknologi Informasi");

  print(nim.id);
  print(nama.name);
  print(jurusan.departement);
}
