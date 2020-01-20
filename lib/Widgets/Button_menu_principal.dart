import 'package:flutter/material.dart';

class ButtonMenuInitial extends StatefulWidget {
  @override
  _ButtonMenuInitialState createState() => _ButtonMenuInitialState();
}

class _ButtonMenuInitialState extends State<ButtonMenuInitial> {
  DateTime _date = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Positioned(
        left: 15,
        top: 90,
        child: Container(
            height: 70,
            width: 330,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
            child: Container(
              width: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.deepPurple[800]
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                FlatButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    color: Colors.deepPurple[800],
                    onPressed: () async {
                      final dtPicker = await showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime(1900),
                          lastDate: DateTime(2100));
                      if (dtPicker != null && dtPicker != _date) {
                        setState(() {
                          _date = dtPicker;
                        });
                      }
                    },
                    child: Icon(
                      Icons.today,
                      size: 45,
                      color: Colors.white,
                    )),
                    Text("Clique no icone ao Lado \n e abra o Calendario",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                    ),)
              ],
            ),
            )
            
            
            
            ));
  }
}
