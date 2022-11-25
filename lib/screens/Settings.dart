import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:app/Screens/bibliotheque.dart';

class Settings extends StatelessWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Paramétres du profil",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: ListView(
            children: [
              Image.asset(
                "assets/minecraft.jpg",
                width: 400,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 80.0),
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Mot de passe actuel',
                      ),
                    ),
                    SizedBox(
                      width: 10.0,
                      height: 12.0,
                      //Card
                    ),
                    TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Nouveau mot de passe',
                      ),
                    ),
                    SizedBox(
                      width: 10.0,
                      height: 12.0,
                      //Card
                    ),
                    TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Adresse de facturation',
                      ),
                    ),
                    SizedBox(
                      width: 10.0,
                      height: 12.0,
                      //Card
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20.0),
                      child: Column(
                        children: [
                          SizedBox(
                            width: 60.0,
                            height: 12.0,
                            //Card
                          ),
                          ElevatedButton(
                            child: Text('Enregistrer'),
                            style: ElevatedButton.styleFrom(
                              primary: Colors.blue,
                              minimumSize: Size(400, 40),
                            ),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Bibliotheque()));
                            },
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
