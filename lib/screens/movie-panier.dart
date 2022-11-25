import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Panier extends StatelessWidget {
  const Panier({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Panier",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: GridView.count(
        crossAxisCount: 1,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(
                top: 10.0, bottom: 80.0, left: 12.0, right: 12.0),
            child: Container(
              height: 600.0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    "Total : 500 TND",
                    textAlign: TextAlign.end,
                  ),
                  new Divider(
                    color: Colors.black,
                  ),
                  Card(
                    elevation: 2.0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Icon(Icons.delete),
                        Image.asset("assets/dmc5.jpg",
                            width: 120, height: 80.0),
                        SizedBox(height: 8),
                        Text(
                          "200 TND",
                          style: TextStyle(fontSize: 16),
                        )
                      ],
                    ),
                  ),
                  Card(
                    elevation: 2.0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Icon(Icons.delete),
                        Image.asset("assets/dmc5.jpg",
                            width: 120, height: 80.0),
                        const SizedBox(height: 8),
                        Text(
                          "200 TND",
                          style: TextStyle(fontSize: 16),
                        )
                      ],
                    ),
                  ),
                  Card(
                    elevation: 5,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Icon(Icons.delete),
                        Image.asset("assets/dmc5.jpg",
                            width: 120, height: 80.0),
                        SizedBox(height: 8),
                        Text(
                          "100 TND",
                          style: TextStyle(fontSize: 16),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
