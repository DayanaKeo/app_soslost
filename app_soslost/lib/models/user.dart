class User {
  final String prenom;
  final String nom;
  final String email;
  final String password;

  User({ required this.prenom, required this.nom, required this.email, required this.password,});

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      prenom: json['prenom'],
      nom: json['nom'],
      email: json['email'],
      password: json['password'],
    );
  }
}
