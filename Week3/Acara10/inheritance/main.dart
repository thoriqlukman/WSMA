import 'human.dart';
import 'armor_titan.dart';

void main(List<String> args) {
  armor_titan T = armor_titan();
  human H = human();

  T.powerPoint = 7;
  H.powerPoint = 5;

  print("Power Point Armor Titan : ${T.powerPoint}");
  print("Sifat Titan Armor : ${T.terjang()}");

  print("Power Point Human : ${H.powerPoint}");
  print("Sifat Human : ${H.killAllTitan()}");
}
