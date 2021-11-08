import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:numberpicker/numberpicker.dart';

class Uebung_Hinzufuegen extends StatelessWidget{

  Uebung_Hinzufuegen({Key? key, required this.uebung}) : super(key: key);

  String uebung;

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(fontSize: 26);
    return Scaffold(
      appBar: AppBar(title: Text(uebung),),
      body: Builder(builder: (context) {
        return _IntegerExample();

      }),

    );

  }

}
class _IntegerExample extends StatefulWidget {
  @override
  __IntegerExampleState createState() => __IntegerExampleState();
}

class __IntegerExampleState extends State<_IntegerExample> {
  int _currentValue = 3;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListTile(
          title: Text('Sätze : $_currentValue',
          style: const TextStyle(fontWeight: FontWeight.w500)),
        ),
        NumberPicker(
          value: _currentValue,
          minValue: 0,
          maxValue: 10,
          onChanged: (value) => setState(() => _currentValue = value),
        ),
        const ListTile(
          title: Text("Gewicht: ",
          style: TextStyle(fontWeight: FontWeight.w500)),
          ),
        TextField(
          onSubmitted: (value) => print(value),
          decoration: const InputDecoration(labelText: "Gib dein Gewicht ein"),
          keyboardType: TextInputType.number,
          inputFormatters: <TextInputFormatter>[
            FilteringTextInputFormatter.digitsOnly
          ], // Only numbers can be entered
        ),


      ],
    );
  }
}

