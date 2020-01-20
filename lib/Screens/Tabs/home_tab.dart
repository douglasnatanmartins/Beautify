import 'package:flutter/material.dart';

import '../menu_principal.dart';

class HomeTab extends StatefulWidget {
  
  @override
  _HomeTabState createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {


  

  int _currentIndex = 0;

  final Tabs= [
      MenuPrincipal(),
      Center(child: Text("Serviços")),
      Center(child: Text("oque eu vou retornar no")),
      Center(child: Text("Clientes")),
      Center(child: Text("Agenda")),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        iconSize: 20,
        selectedFontSize: 15,

        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home, color: Colors.deepPurple[300],),
              title: Text(
                "Tela Inicial",
                style: TextStyle(fontSize: 10, color: Colors.deepPurple[300]),
              ),
              backgroundColor: Colors.blue),
          BottomNavigationBarItem(
              icon: Icon(Icons.build, color: Colors.deepPurple[300],),
              title: Text(
                "Serviços",
                style: TextStyle(fontSize: 10, color: Colors.deepPurple[300]),
              ),
              backgroundColor: Colors.blue),
              BottomNavigationBarItem(
                
              icon: Icon(Icons.add_box, color: Colors.deepPurple[300], size: 35,),
              title: Text(
                "",
                style: TextStyle(fontSize: 10, color: Colors.deepPurple[300]),
              ),
              backgroundColor: Colors.blue),
          BottomNavigationBarItem(
              icon: Icon(Icons.people, color: Colors.deepPurple[300]),
              title: Text(
                "Clientes",
                style: TextStyle(fontSize: 10, color: Colors.deepPurple[300]),
              ),
              backgroundColor: Colors.blue),
          BottomNavigationBarItem(
              icon: Icon(Icons.date_range, color: Colors.deepPurple[300]),
              title: Text(
                "Agenda",
                style: TextStyle(fontSize: 10, color: Colors.deepPurple[300]),
              ),
              backgroundColor: Colors.blue),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
