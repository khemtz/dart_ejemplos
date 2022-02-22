void printName(String name) {
  print("El nombre es:" + name);
}

num sumaNumeros(int a, int b) {
  var c = a + b;
  return (c);
}

void main() {
  var nombre = "Carlos";
  var num1 = 5;
  var num2 = 10;
  var suma = sumaNumeros(num1, num2);
  printName(nombre);
  print(suma.toString());
}
