import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class TrainingsPlan extends StatelessWidget {
  const TrainingsPlan({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
            title: const Text('Trainingspläne'),
          ),
          body: ListView(children: <Widget>[
            const Center(
                child: Text(
                  'Trainingsplan 1',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                )),
            DataTable(
              columns: const [
                DataColumn(label: Text(
                    'Übung',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight
                        .bold),
                )),
                DataColumn(label: Text(
                    'Satz 1',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)
                )),
                DataColumn(label: Text(
                    'Satz 2',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)
                )),
              ],
              rows: const [
                DataRow(cells: [
                  DataCell(Text('Butterfly')),
                  DataCell(Text('70kg, 10 Wdh')),
                  DataCell(Text('80kg, 8 Wdh')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Benchpress')),
                  DataCell(Text('100kg, 8 Wdh')),
                  DataCell(Text('120kg, 6 Wdh')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Deadlifts')),
                  DataCell(Text('160kg, 8 Wdh')),
                  DataCell(Text('180kg, 6 Wdh')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Squats')),
                  DataCell(Text('130kg, 8Wdh')),
                  DataCell(Text('150kg, 6 Wdh')),
                ]),
              ],
            )])
      );

  }
}
