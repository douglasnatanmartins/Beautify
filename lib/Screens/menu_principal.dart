import 'package:beautify/Tiles/previsao_mes_tile.dart';
import 'package:beautify/Tiles/top_clientes_tile.dart';
import 'package:beautify/Widgets/Button_menu_principal.dart';
import 'package:flutter/material.dart';

class MenuPrincipal extends StatefulWidget {
  @override
  _MenuPrincipalState createState() => _MenuPrincipalState();
}

class _MenuPrincipalState extends State<MenuPrincipal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: <Widget>[
        Container(
          width: 500,
          height: 120,
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
            Color.fromARGB(255, 123, 104, 238),
            Colors.deepPurple[800]
          ], begin: Alignment.bottomCenter, end: Alignment.topCenter)),
          child: Padding(
            padding: EdgeInsets.only(
              left: 35,
              top: 30,
            ),
            child: Text(
              "Ola!, Douglas Natan Martins",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
        Padding(
            padding: EdgeInsets.only(top: 160, left: 5, right: 5, bottom: 240),
            child: Card(
                elevation: 5,
                semanticContainer: true,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: Row(
                  children: <Widget>[
                    Container(height: 200, child: TopClientes()),
                  ],
                ))),
        Padding(
            padding: EdgeInsets.only(top: 330, left: 5, right: 5, bottom: 160),
            child: Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Row(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.only(left: 10, top: 10),
                      height: 100,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text("Ganhos do dia",
                              style: TextStyle(
                                  fontSize: 13,
                                  color: Colors.deepPurple[800],
                                  fontWeight: FontWeight.bold)),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: <Widget>[
                              Text("R\$",
                                  style: TextStyle(
                                      color: Colors.deepPurple[800],
                                      fontWeight: FontWeight.bold,
                                      fontSize: 28)),
                              SizedBox(width: 8),
                              Text("500,00",
                                  style: TextStyle(
                                      color: Colors.deepPurple[800],
                                      fontWeight: FontWeight.bold,
                                      fontSize: 28)),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ))),
        Padding(
            padding: EdgeInsets.only(top:410, left: 5, right: 5,bottom: 0),
            child: Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Row(
                  children: <Widget>[
                    Container(
                      
                      padding: EdgeInsets.only(left: 10, top: 10, bottom: 1),
                      height: 140,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text("Previsão de mês",
                              style: TextStyle(
                                  fontSize: 13,
                                  color: Colors.deepPurple[800],
                                  fontWeight: FontWeight.bold)),
                          SizedBox(
                            height: 7,
                          ),
                          PrevisaoMes(),
                        ],
                      ),
                    ),
                  ],
                ))),
        ButtonMenuInitial(),
      ],
    ));
  }
}
