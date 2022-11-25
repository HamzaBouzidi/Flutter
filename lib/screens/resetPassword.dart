import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:app/Screens/Settings.dart';
import 'package:app/Screens/bibliotheque.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Réinitialiser le mot de passe",
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
                        hintText: 'Username',
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
                            child: Text('Réinitialiser le mot de passe'),
                            style: ElevatedButton.styleFrom(
                              primary: Colors.blue,
                              minimumSize: Size(400, 40),
                            ),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Settings()));
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
