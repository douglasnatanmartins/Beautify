import 'package:beautify/Widgets/custom_drawer.dart';
import 'package:flutter/material.dart';
import 'Tabs/home_tab.dart';

class HomeScreen extends StatelessWidget {

  final _pageController = PageController();

  final GlobalKey<ScaffoldState> _scaffoldkey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: _pageController,
      physics: NeverScrollableScrollPhysics(),
      children: <Widget>[
        Scaffold(
          drawerEdgeDragWidth: 0,
          key: _scaffoldkey,
          appBar: AppBar(
            elevation: 0,
            centerTitle: true,
            backgroundColor: Colors.deepPurple[800],
            leading: IconButton(
              iconSize: 30,
              icon: Icon(Icons.menu),
              onPressed: () => _scaffoldkey.currentState.openDrawer(),
            ),
            actions: <Widget>[
                IconButton(
                  padding: EdgeInsets.only(right: 10),
                iconSize: 25,
                icon: Icon(Icons.notifications),
                onPressed: (){
                  
                }
              ) ,
              ],
          ),
          body: HomeTab(),
          drawer: CustomDrawer(_pageController),
        ),
        Container(color: Colors.red),
        Container(color: Colors.black),
        Container(color: Colors.grey),
        Container(color: Colors.green),
      ],
    );
  }
}
