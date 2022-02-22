import 'dart:ffi';
import "dart:io";

void ImprimeResultado(double indice) {
  if (indice > 40) {
    print("Obesidad 3");
  } else if (indice > 35) {
    print("Obesidad 2");
  } else if (indice > 30) {
    print("Obesidad 1");
  } else if (indice > 25) {
    print("sobrepeso");
  } else {
    print("OK");
  }
}

double CalculaIMC(int weight, double height) {
  var indiceMasa = weight / (height * height);
  print("tu IMC es " + indiceMasa.toString());
  return indiceMasa;
}

void main() {
  stdout.write("Cual es tu peso en Kg: ");
  var lecturaPeso = stdin.readLineSync();
  int peso = int.parse(lecturaPeso.toString());
  stdout.write("Cual es tu Altura en metros: ");
  var lecturaAltura = stdin.readLineSync();
  var altura = double.parse(lecturaAltura.toString());

  //var imc = peso / (altura * altura);
  var imc = CalculaIMC(peso, altura);
  ImprimeResultado(imc);
}
