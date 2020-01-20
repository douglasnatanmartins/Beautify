import 'package:flutter/material.dart';

class TopClientes extends StatefulWidget {
  @override
  _TopClientesState createState() => _TopClientesState();
}

class _TopClientesState extends State<TopClientes> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(top: 10, left: 10, bottom: 10),
          child: Text("Lista de 5 TOP Clientes",
              style: TextStyle(
                  fontSize: 13,
                  color: Colors.deepPurple[800],
                  fontWeight: FontWeight.bold)),
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              width: 15,
            ),
            Text("1",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.grey,
                )),
            SizedBox(
              width: 2,
            ),
            Icon(
              Icons.star,
              color: Colors.amber,
              size: 18,
            ),
            SizedBox(
              width: 4,
            ),
            Container(
              width: 270,
              height: 20,
              padding: EdgeInsets.only(top: 2, bottom: 2, left: 3, right: 3),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(2),
                  color: Colors.blue[50]),
              child: Text(
                " Douglas Natan Martins",
                style: TextStyle(color: Colors.black, fontSize: 13),
              ),
            )
          ],
        ),
        SizedBox(height: 3),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          verticalDirection: VerticalDirection.down,
          children: <Widget>[
            SizedBox(
              width: 15,
            ),
            Text("2",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.grey[800],
                )),
            SizedBox(
              width: 2,
            ),
            Icon(
              Icons.star,
              color: Colors.amber,
              size: 18,
            ),
            SizedBox(
              width: 4,
            ),
            Container(
              width: 270,
              height: 20,
              padding: EdgeInsets.only(top: 2, bottom: 2, left: 3, right: 3),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(2),
                  color: Colors.blue[50]),
              child: Text(
                " Douglas Tadeu Montemor",
                style: TextStyle(color: Colors.black, fontSize: 13),
              ),
            )
          ],
        ),
        SizedBox(height: 3),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              width: 15,
            ),
            Text("3",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.grey[800],
                )),
            SizedBox(
              width: 2,
            ),
            Icon(
              Icons.star,
              color: Colors.amber,
              size: 18,
            ),
            SizedBox(
              width: 4,
            ),
            Container(
              width: 270,
              height: 20,
              padding: EdgeInsets.only(top: 2, bottom: 2, left: 3, right: 3),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(2),
                  color: Colors.blue[50]),
              child: Text(
                "Diego Vitorino",
                style: TextStyle(color: Colors.black, fontSize: 13),
              ),
            )
          ],
        ),
        SizedBox(height: 3),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          verticalDirection: VerticalDirection.down,
          children: <Widget>[
            SizedBox(
              width: 15,
            ),
            Text("4",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.grey[800],
                )),
            SizedBox(
              width: 2,
            ),
            Icon(
              Icons.star,
              color: Colors.amber,
              size: 18,
            ),
            SizedBox(
              width: 4,
            ),
            Container(
              width: 270,
              height: 20,
              padding: EdgeInsets.only(top: 2, bottom: 2, left: 3, right: 3),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(2),
                  color: Colors.blue[50]),
              child: Text(
                "Lyndon Tavares",
                style: TextStyle(color: Colors.black, fontSize: 13),
              ),
            )
          ],
        ),
        SizedBox(height: 3),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          verticalDirection: VerticalDirection.down,
          children: <Widget>[
            SizedBox(
              width: 15,
            ),
            Text("5",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.grey[800],
                )),
            SizedBox(
              width: 2,
            ),
            Icon(
              Icons.star,
              color: Colors.amber,
              size: 18,
            ),
            SizedBox(
              width: 4,
            ),
            Container(
              width: 270,
              height: 20,
              padding: EdgeInsets.only(top: 2, bottom: 2, left: 3, right: 3),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(2),
                  color: Colors.blue[50]),
              child: Text(
                "Renato Pradebom",
                style: TextStyle(color: Colors.black, fontSize: 13),
              ),
            )
          ],
        )
      ],
    );
  }
}
