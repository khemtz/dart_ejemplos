import "dart:io";

void main() {
  stdout.write("de cuantos niveles seria el triangulo: ");
  var respuesta = stdin.readLineSync();
  int total = int.parse(respuesta.toString());

  for (int ren = 0; ren < total; ren++) {
    for (int col = 0; col <= ren; col++) {
      stdout.write("*");
    }
    stdout.write("\n");
  }
}
