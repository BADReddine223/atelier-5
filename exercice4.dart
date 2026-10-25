class MotdepasseCourtException implements Exception {
  String message;
  MotdepasseCourtException(this.message);
  @override
  String toString() => message;
}

void verifierMotdepasse(String mp) {
  if (mp.length < 6) {
    throw MotdepasseCourtException(
        'Mot de passe trop court : il faut au moins 6 caracteres');
  }
  print('Mot de passe valide');
}

void main() {
  try {
    verifierMotdepasse('abc');
  } on MotdepasseCourtException catch (e) {
    print('Erreur : $e');
  }
}
