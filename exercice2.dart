import 'dart:io';

void main() {
  stdout.write('Entrez votre age : ');
  String? texte = stdin.readLineSync();
  try {
    int age = int.parse(texte!);
    print('Votre age est $age ans');
  } on FormatException catch (e) {
    print('Format invalide : veuillez entrer un nombre');
  } finally {
    print("Fin d'opération");
  }
}
