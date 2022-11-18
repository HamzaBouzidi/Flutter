import 'package:app/components/cell.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:app/components/cellG.dart';
import '../models/game.dart';

class HomeScreen extends StatelessWidget {
  //var
  List<Game> games = [
    Game("dmc5.jpg", "Devil May Cry ", 200),
    Game("fifa.jpg", "Devil May Cry ", 200),
    Game("minecraft.jpg", "Devil May Cry ", 200),
    Game("nfs.jpg", "Devil May Cry", 200),
    Game("rdr2.jpg", "Devil May Cry ", 200),
    Game("re8.jpg", "Devil May Cry ", 200),
  ];

  HomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text("G-Store Esprit",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ))),
      body: ListView.builder(
        itemCount: games.length,
        itemBuilder: (BuildContext context, int index) {
          return cellGrid(game: games[index]);
        },
      ),
    );
  }
}
