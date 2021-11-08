import 'dart:convert';
import 'dart:async';
import 'package:fitness_app/uebung_hinzufuegen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Uebungen extends StatelessWidget {

  Uebungen({Key? key, required this.muskelgruppe}) : super(key: key);

  final String muskelgruppe;
  late List<ListTile> uebungen = [];
  late Future<String> file;
  late List<String> liste = [];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(
            "$muskelgruppe"
        ),
      ),
      body: Center(
        child: FutureBuilder(

            future: file = DefaultAssetBundle.of(context).loadString
          ("assets/$muskelgruppe"
                ".txt"),
            builder: (context, snapshot) {
              LineSplitter ls = new LineSplitter();
              List<String> lines = ls.convert(snapshot.data.toString());
              for (var f in lines) {
                if (f != "null") {
                  liste.add(f);
                }
              }
              if(liste.isNotEmpty) {
                return ListView.separated(
                  padding: const EdgeInsets.all(0),
                  itemCount: liste.length,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      tileColor: Colors.blue,
                      title: Center(child:Text(liste[index])),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Uebung_Hinzufuegen
                                  (uebung: liste[index]))

                        );
                      },
                    );
                  }, separatorBuilder: (BuildContext context, int index) =>
                      const Divider(),);



              }
              else{
                return const Text("Fehler");
              }
            }),
      ),
    );
  }


  }
