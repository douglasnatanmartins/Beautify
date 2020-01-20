import 'package:flutter/material.dart';

class DrawerTile extends StatelessWidget {
  final IconData icon;
  final String text;
  final PageController controller;
  final int page;

  DrawerTile(this.icon, this.text, this.controller, this.page);

  @override
  Widget build(BuildContext context) {
    return Material(
        child: InkWell(
      onTap: () {
        Navigator.of(context).pop();
        controller.jumpToPage(page);
      },
      child: Container(
        height: 50,
        child: Padding(
          padding: EdgeInsets.only(left: 15),
          child: Row(
            children: <Widget>[
              Icon(icon, size: 22, 
              color: controller.page == page.round() ? Colors.deepPurple[700] : Colors.deepPurple[300]),
              SizedBox(width: 28),
              Text(text,
                  style: TextStyle(
                      color: controller.page == page.round() ? Colors.deepPurple[700] : Colors.deepPurple[300],
                      fontSize: 15,
                      fontWeight: FontWeight.w600))
            ],
          ),
        ),
      ),
    ));
  }
}
