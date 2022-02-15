import 'dart:ffi';
import "dart:io";

void main() {
  stdout.write("Cual es tu peso en Kg: ");
  var lecturaPeso = stdin.readLineSync();
  int peso = int.parse(lecturaPeso.toString());

  stdout.write("Cual es tu Altura en metros: ");
  var lecturaAltura = stdin.readLineSync();
  var altura = double.parse(lecturaAltura.toString());

  var imc = peso / (altura * altura);

  print("tu IMC es" + imc.toString());
}
