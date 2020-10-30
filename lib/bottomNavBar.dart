import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:ilove_you1/chatDrawer.dart';
import 'Drawer.dart';
void main() => runApp(MaterialApp(home: BottomNavBar()));

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {


  int pageIndex = 0;

  final DarkDrawerPage _home = DarkDrawerPage();
  final ChatD _chat = ChatD();
  Widget _showPage = new DarkDrawerPage();

  Widget _pages(int page){
    switch(page){

      case 0:
      return _home;
      break;

      case 1:
      return _chat;
      break;
    }
  }

  GlobalKey _bottomNavigationKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: CurvedNavigationBar(
          key: _bottomNavigationKey,
          index: pageIndex,
          height: 50.0,
          items: <Widget>[
            Icon(Icons.event_note, size: 30),
            Icon(Icons.chat, size: 30),
            Icon(Icons.location_on, size: 30),
            Icon(Icons.lock, size: 30),
            Icon(Icons.perm_identity, size: 30),
          ],
          color: Colors.white,
          buttonBackgroundColor: Colors.white,
          backgroundColor: Colors.pink,
          animationCurve: Curves.easeInOut,
          animationDuration: Duration(milliseconds: 500),
          onTap: (tappedIndex) {
            setState(() {
              _showPage = _pages(tappedIndex);
            });
          },
        ),
        body: Container(
          color: Colors.pink,
          child: Center(
            child: _showPage,
          ),
        ),
    );
  }
}