import 'package:flutter/material.dart';
import 'package:app_soslost/widgets/background_image.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundImage(
        alignment: Alignment.topCenter, // Alignement du BackgroundImage en haut
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 100), // Ajoute un espace entre le texte et le formulaire
            Text(
              'Connexion',
              style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20), // Ajoute un espace entre le texte et le formulaire
            LoginForm(), // Ajoute le formulaire de connexion
          ],
        ),
      ),
    );
  }
}

class LoginForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.8), // Ajoute un fond semi-transparent au formulaire
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          TextField(
            decoration: InputDecoration(
              labelText: 'Nom d\'utilisateur',
            ),
          ),
          SizedBox(height: 10),
          TextField(
            decoration: InputDecoration(
              labelText: 'Mot de passe',
            ),
            obscureText: true, // Masque le texte du mot de passe
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              // Action à effectuer lors de la soumission du formulaire de connexion
            },
            child: Text('Connexion'),
          ),
        ],
      ),
    );
  }
}