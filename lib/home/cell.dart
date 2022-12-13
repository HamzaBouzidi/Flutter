import 'package:flutter/material.dart';
import 'package:app/arguments/game_argument.dart';
import 'package:app/home/details_screen.dart';
import 'package:app/models/game.dart';
import 'package:app/utilities/constantes.dart';

class Cell extends StatelessWidget {
  //var
  final Game mGame;

  const Cell(this.mGame, {super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, DetailsScreen.routeName,
            arguments: GameArgument(mGame));
      },
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.network(
                "$BASE_URL/img/${mGame.image}",
                width: 200,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      mGame.title,
                      style: const TextStyle(color: Colors.black),
                    ),
                    Text(
                      "${mGame.price.floor().toString()} TND",
                      style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
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
