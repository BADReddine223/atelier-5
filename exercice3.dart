void verifierMotdepasse(String mp) {
  if (mp.length < 6) {
    throw Exception('Le mot de passe doit contenir au moins 6 caracteres');
  }
  print('Mot de passe valide');
}

void main() {
  try {
    verifierMotdepasse('abc');
  } catch (e) {
    print('Erreur : $e');
  }
}
