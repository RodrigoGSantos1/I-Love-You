import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:ilove_you1/Chat.dart';

class ChatD extends StatelessWidget {
  static final String path = "lib/src/pages/navigation/drawer1.dart";
  final GlobalKey<ScaffoldState> _key = GlobalKey<ScaffoldState>();
  final Color primary = Colors.pink;
  final Color active = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _key,
        
        appBar: AppBar(
          backgroundColor: Colors.pink,
          title:Padding(
            padding: EdgeInsets.only(left: 70),
            child: Text("I L0V3 Y0U"),
            ),
          
          leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              _key.currentState.openDrawer();
            },
          ),
        ),
        drawer: _buildDrawer(),
        body: Chat(),
        
    );
  }

  _buildDrawer() {
    return ClipPath(
      clipper: OvalRightBorderClipper(),
      child: Drawer(
        child: Container(
          padding: const EdgeInsets.only(left: 16.0, right: 40),
          decoration: BoxDecoration(
              color: primary, boxShadow: [BoxShadow(color: Colors.black45)]),
          width: 300,
          child: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Padding(
                      padding:EdgeInsets.only(top: 12, bottom: 12),
                  ),
                  Container(
                    height: 90,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: LinearGradient(
                            colors: [Colors.black, Colors.white])),
                    child: CircleAvatar(
                      radius: 40,
                    ),
                  ),
                  SizedBox(height: 5.0),
                  Text(
                    "Nome do usuario",
                    style: TextStyle(color: Colors.white, fontSize: 18.0),
                  ),
                  Text(
                    "@ do usuario",
                    style: TextStyle(color: active, fontSize: 16.0),
                  ),
                  SizedBox(height: 30.0),
                  GestureDetector(
                    child: _buildRow(Icons.chat, "Chat"),
                    onTap: (){},
                    ),
                  _buildDivider(),
                  _buildRow(Icons.event_note , "Eventos"),
                  _buildDivider(),
                  _buildRow(Icons.location_on, "Localização"),
                  _buildDivider(),
                  _buildRow(Icons.lock, "Secretos"),
                  _buildDivider(),
                  _buildRow(Icons.person_pin, "Meu Perfil"),
                  _buildDivider(),
                  _buildRow(Icons.settings, "Configurações"),
                  _buildDivider(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Divider _buildDivider() {
    return Divider(
      color: active,
    );
  }

  Widget _buildRow(IconData icon, String title) {
    final TextStyle tStyle = TextStyle(color: active, fontSize: 16.0);
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(children: [
        Icon(
          icon,
          color: active,
        ),
        SizedBox(width: 10.0),
        Text(
          title,
          style: tStyle,
        ),
      ]),
    );
  }
}