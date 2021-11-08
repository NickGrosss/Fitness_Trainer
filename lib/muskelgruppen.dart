import 'package:fitness_app/uebungen.dart';
import 'package:flutter/material.dart';

class Muskelgruppen extends StatelessWidget {

  late List<String> liste = ["Rücken", "Brust", "Bizeps", "Trizeps", "Bauch",
    "Beine"];

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(fontSize: 26);
    return Scaffold(
        appBar: AppBar(
          title: const Text('Muskelgruppen'),
        ),
        body: Builder(builder: (context) {
          return ListView.separated(
            padding: const EdgeInsets.all(16),
            itemCount: liste.length,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                tileColor: Colors.blue,
                title: Center(child:Text(liste[index])),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>Uebungen( muskelgruppe:
                          liste[index]))

              );
            },
          );
        }, separatorBuilder: (BuildContext context, int index) => const Divider(),
      );
    }
    ));
  }
}