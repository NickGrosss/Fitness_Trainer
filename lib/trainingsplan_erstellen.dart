import 'package:fitness_app/muskelgruppen.dart';
import 'package:fitness_app/uebungen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Trainingsplan_Erstellen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(fontSize: 26);
    return Scaffold(
      appBar: AppBar(title: Text("Übung hinzufügen"),),
      body: Builder(builder: (context) {
        return Padding(
          padding: const EdgeInsets.only(top: 0),
          child: ElevatedButton(
            onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>Muskelgruppen()));

            },
            child: Text("Trainingsplan erstellen"),
          ));
          // BottomNavigationBarItem(

            /*textStyle: textStyle,
            borderColor: Colors.grey[300],
            borderWidth: 2,
            onPressed: (dynamic val) {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>val));
            },
            items: [
              [
                GridButtonItem(
                  value: Muskelgruppen(),
                  title: "Übung hinzufügen",
                  color: Colors.black,
                  textStyle: textStyle.copyWith(color: Colors.white),
                ),
              ]
            ],
          ),
        );*/
      }),

    );
  }

}