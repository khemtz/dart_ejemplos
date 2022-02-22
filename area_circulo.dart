import 'dart:io';

void AreaCirculo(int r) {
  double pi = 3.1416;
  var area = pi * (r * r);
  print("el area es:" + area.toString());
}

int LeerConsolaint(String msje) {
  stdout.write(msje);
  var readconsole = stdin.readLineSync();
  int read = int.parse(readconsole.toString());
  return read;
}

void main() {
  int radio = LeerConsolaint("cual es el radio:");
  AreaCirculo(radio);
  //print(radio.toString());
}
