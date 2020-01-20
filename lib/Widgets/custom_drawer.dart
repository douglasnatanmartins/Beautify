//import 'package:cached_network_image/cached_network_image.dart';
import 'package:beautify/Tiles/drawer_tile.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomDrawer extends StatelessWidget {
  final PageController pageController;

  CustomDrawer(this.pageController);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          Container(
            width: 350,
            height: 180,
            child: DrawerHeader(
              padding: EdgeInsets.only(top: 10, left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  CircleAvatar(
                    backgroundImage: NetworkImage(
                      "https://cdn.pixabay.com/photo/2015/09/18/00/24/robin-944887_960_720.jpg",
                    ),
                    minRadius: 40,
                    maxRadius: 40,
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Douglas Natan Martins",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.normal,
                        fontSize: 10),
                  ),
                  SizedBox(height: 7),
                  Text(
                    "douglas.natan@datapar.com.py",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.normal,
                        fontSize: 10),
                  )
                ],
              ),
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                Color.fromARGB(255, 123, 104, 238),
                Colors.deepPurple[800]
              ], begin: Alignment.topRight, end: Alignment.bottomLeft)),
            ),
          ),
          DrawerTile(Icons.home, "Menu Principal", pageController,0),
          DrawerTile(Icons.settings, "Configurações", pageController,1),
          DrawerTile(Icons.star, "Classificações", pageController, 2),
          DrawerTile(Icons.collections, "Portifólio", pageController, 3),
          DrawerTile(Icons.today, "Status Agendamento", pageController, 4),
          Divider(),
          Container(
            padding: EdgeInsets.only(top: 10, bottom: 10, left: 15),
            child: Text(
              "Registros",
              style: TextStyle(fontSize: 15, color: Colors.grey[600]),
            ),
          ),
          DrawerTile(Icons.money_off, "Despesas", pageController, 5),
          DrawerTile(Icons.local_offer, "Produtos/Serviços", pageController, 6),
          DrawerTile(Icons.assignment, "Orçamentos", pageController, 7),
          DrawerTile(Icons.receipt, "Recibos", pageController, 8),
          DrawerTile(Icons.monetization_on, "Ganhos", pageController,9),
          DrawerTile(Icons.attach_money, "Pagamentos Pendentes", pageController, 10),
          DrawerTile(Icons.equalizer, "Relatórios", pageController, 11),
          Divider(),
          Container(
            padding: EdgeInsets.only(top: 10, bottom: 10, left: 15),
            child: Text(
              "Comunicação",
              style: TextStyle(fontSize: 15, color: Colors.grey[600]),
            ),
          ),
          DrawerTile(Icons.email, "Fale Conosco", pageController, 12),
          DrawerTile(Icons.local_offer, "Gostou do App? Avalie-nos", pageController, 13),
          DrawerTile(Icons.share, "Compartilhar", pageController, 14),
          DrawerTile(Icons.screen_share, "Curta Nossa Pagina", pageController, 15),
          SizedBox(height: 15),
          Stack(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(top: 10, left: 30, bottom: 15),
                child: Text(
                  "Versão, OU Ultima sincronização.",
                  style: TextStyle(
                      fontSize: 13,
                      fontStyle: FontStyle.italic,
                      color: Colors.deepPurple[600]),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
