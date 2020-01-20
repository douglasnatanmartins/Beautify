import 'package:flutter/material.dart';

class PrevisaoMes extends StatefulWidget {
  @override
  _PrevisaoMesState createState() => _PrevisaoMesState();
}

class _PrevisaoMesState extends State<PrevisaoMes> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Text("Receitas",
                style: TextStyle(
                    color: Colors.deepPurple[800],
                    fontWeight: FontWeight.bold,
                    fontSize: 15)),
            SizedBox(width: 160),
            Text("( atual )",
                style: TextStyle(color: Colors.deepPurple[800], fontSize: 15)),
            SizedBox(width: 3),
            Text(
              "R\$ 0,00",
              style: TextStyle(color: Colors.deepPurple[800]),
            )
          ],
        ),
        SizedBox(height: 2),
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            SizedBox(width: 205),
            Text("( prevista )"),
            Text("R\$ 0,00"),
          ],
        ),
        SizedBox(height: 20),
        Row(
          children: <Widget>[
            Text("Despesas",
                style: TextStyle(
                    color: Colors.red[700],
                    fontWeight: FontWeight.bold,
                    fontSize: 15)),
            SizedBox(width: 150),
            Text("( atual )",
                style: TextStyle(color: Colors.red[700], fontSize: 15)),
            SizedBox(width: 3),
            Text(
              "R\$ 0,00",
              style: TextStyle(color: Colors.red[700]),
            )
          ],
        ),
        SizedBox(height: 2),
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            SizedBox(width: 205),
            Text("( prevista )"),
            Text("R\$ 0,00"),
          ],
        )
      ],
    );
  }
}
