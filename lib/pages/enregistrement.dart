import 'package:appchienchat/fonction/game.dart';
import 'package:appchienchat/pages/jeu.dart';
import 'package:flutter/material.dart';
import 'package:appchienchat/fonction/variable.dart';

class enregistrement extends StatefulWidget {
  @override
  _enregistrementState createState() => _enregistrementState();

}

class _enregistrementState extends State<enregistrement>{
  @override
  Widget build(BuildContext context) {
    var nom;
    var prenom;

    return Scaffold(
        appBar: AppBar(
          title: Text("Enregistrement Joueur"),
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.all(8.0),
                  child: TextField(
                    onChanged: (text){
                      setState(() {
                        nom = text;
                      });
                    },
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Nom",
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(8.0),
                  child: TextField(
                    onChanged: (text){
                      setState(() {
                        prenom = text;
                      });
                    },
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Prenom",
                    ),
                  ),
                ),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        joueur.playerName = nom;
                        joueur.playerFirstName = prenom;
                      });
                      print("enregistrment");
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Jeu()),
                      );
                    }, child: Text("Game start")
                ),
              ],
            ),
          ),
        )
    );
  }
}