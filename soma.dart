import 'dart:io';

void main() {
  print('Digite um numero inteiro positivo: ');
  var input = stdin.readLineSync();

  if (input != null && int.tryParse(input) != null) {
    int num = int.parse(input);

    if (num < 0) {
      print('Numero digitado nao e positivo');
    } else {
      int sum = somatorio(num);

      print('Resultado: $sum');
    }
  } else {
    print('Dado digitado nao corresponde a um inteiro');
  }
}

int somatorio(int n) {
  int sum = 0;

  for (var i = 0; i < n; i++) {
    if (i % 3 == 0 || i % 5 == 0) {
      sum += i;
    }
  }

  return sum;
}
