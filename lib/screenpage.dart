import 'package:flutter/material.dart';

class ScreenPage extends StatelessWidget {
  const ScreenPage({super.key});

  @override
  Widget build(BuildContext context) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            margin: EdgeInsets.all(16.0),
            padding: EdgeInsets.all(16.0),
            color: Colors.blueGrey,
            child: Text(
              "Screen View With Container",
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              padding: EdgeInsets.all(16.0),
              children: List.generate(6, (index) {
                return Card(
                  color: Colors.grey,
                  margin: EdgeInsets.all(8.0),
                  child: Center(
                    child: Text(
                      "Sreen View With Grid",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                );
              }),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: TextButton(
              onPressed: () {// Button Pressed
              },
              child: Text(
                "Screen View With Text Button",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18.0,
                ),
              ),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.blueGrey),
                padding: MaterialStateProperty.all(
                  EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
                ),
              ),
            ),
          ),
        ],
      );
    }
  }

