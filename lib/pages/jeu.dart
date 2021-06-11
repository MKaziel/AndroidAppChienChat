import 'package:appchienchat/fonction/game.dart';
import 'package:flutter/material.dart';
import 'package:appchienchat/fonction/variable.dart';

class Jeu extends StatefulWidget {
  @override
  _JeuState createState() => _JeuState();

}

class _JeuState extends State<Jeu> {
  var nom = joueur.playerName;
  var prenom = joueur.playerFirstName;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Game"),
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Text("Bienvenue ${prenom} ${nom}"),
          ),
        )
    );
  }
}