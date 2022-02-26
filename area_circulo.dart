import 'dart:io';

void AreaCirculo(int r) {
  double pi = 3.1416;
  var area = pi * (r * r);
  print("el area es:" + area.toString());
}

void AreaRectangulo(int b, int a) {
  var area = b * a;
  print("el area es:" + area.toString());
}

int LeerConsolaint(String msje) {
  stdout.write(msje);
  var readconsole = stdin.readLineSync();
  int read = int.parse(readconsole.toString());
  return read;
}

void calculoMes1(int numero) {
  if (numero == 1) {
    print("El mes es Enero");
  }
  if (numero == 2) {
    print("El mes es Febrero");
  }
  if (numero == 3) {
    print("El mes es Marzo");
  }
  if (numero == 4) {
    print("El mes es Abril");
  }
  if (numero == 5) {
    print("El mes es Mayo");
  }
  if (numero == 6) {
    print("El mes es Junio");
  }
  if (numero == 7) {
    print("El mes es Julio");
  }
  if (numero == 8) {
    print("El mes es Agosto");
  }
  if (numero == 9) {
    print("El mes es Septiembre");
  }
  if (numero == 10) {
    print("El mes es Octubre");
  }
  if (numero == 11) {
    print("El mes es Noviembre");
  }
  if (numero == 12) {
    print("El mes es Diciembre");
  }
}

void calculoMes2(int numero) {
  switch (numero) {
    case 1:
      print("el mes es Enero");
      break;
    case 2:
      print("el mes es Febrero");
      break;
    case 3:
      print("el mes es Marzo");
      break;
    case 4:
      print("el mes es Abril");
      break;
    case 5:
      print("el mes es Mayo");
      break;
    default:
      print("No es un numero valido");
      break;
  }
}

void calculoMes3(int i) {
  var arrMes = [
    'enero', //<----posicion 0
    'febrero',
    'marzo',
    'abril',
    'mayo',
    'junio',
    'julio',
    'agosto',
    'septiembre',
    'octubre',
    'noviembre',
    'diciembre' //<------posicion 11
  ];
  print("el mes es " + arrMes[i - 1]);
}

void calculoMes4(int i) {
  Map mapMes = <int, String>{
    1: 'Enero',
    2: 'Febrero',
    3: 'Marzo',
    4: 'Abril',
    5: 'Mayo',
    6: 'Junio',
    7: 'Julio', //<------mapMes[7]
    8: 'Agosto',
    9: 'Septiembre',
    10: 'Octubre',
    11: 'Noviembre',
    12: 'Diciembre'
  };
  if ((i > 0) && (i <= 12)) {
    print("el mes es " + mapMes[i]);
  } else {
    print("no es un numero Valido");
  }
}

void imprimeMenu() {
  print("\n\n******* MENU ********");
  print("1.- Circulo");
  print("2.- Rectangulo");
  print("3.- Triangulo");
  print("4.- Cuadrado");
  print("5.- Calculo de Mes");
  print("0.- Salir");
}

void main() {
  var respuesta = 9;

  while (respuesta != 0) {
    imprimeMenu();
    respuesta = LeerConsolaint("Elige una opcion:");

    if (respuesta == 1) {
      int radio = LeerConsolaint("cual es el radio:");
      AreaCirculo(radio);
    } else if (respuesta == 2) {
      //print("calculo rectangulo");
      int base = LeerConsolaint("cual es la base:");
      int altura = LeerConsolaint("cual es la altura:");
      AreaRectangulo(base, altura);
    } else if (respuesta == 3) {
      print("calculo triangulo");
    } else if (respuesta == 5) {
      int mes = LeerConsolaint("elige un numero del 1 al 12:");
      calculoMes4(mes);
      //ejecucion de la funcion calculo de mes
    }
  }
  //print(radio.toString());
}
