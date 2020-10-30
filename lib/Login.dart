import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:google_fonts/google_fonts.dart';
import 'bottomNavBar.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            ClipPath(
              clipper: WaveClipperOne(),
              child: Container(
                color: Colors.pink,
                child: Padding(
                  padding: EdgeInsets.only(
                      top: 50, left: 110, right: 110, bottom: 50),
                  child: Image.asset(
                    "images/Logo.png",
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 50,
                left: 50,
                right: 50,
              ),
              child: Text(
                "Vamos Logar:",
                style: GoogleFonts.courgette(
                  color: Colors.black,
                  fontSize: 20,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 60, left: 30, right: 30),
              child: TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                    border: OutlineInputBorder(
                        borderSide: new BorderSide(color: Colors.teal)),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                    labelText: 'E-mail',
                    labelStyle: TextStyle(color: Colors.black, fontSize: 12)),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20, left: 30, right: 30),
              child: TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                    border: OutlineInputBorder(
                        borderSide: new BorderSide(color: Colors.teal)),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                    labelText: 'Senha',
                    labelStyle: TextStyle(color: Colors.black, fontSize: 12)),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 100, left: 50, right: 50, bottom: 30),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  color: Colors.pink,
                ),
                child: MaterialButton(
                  padding:
                  EdgeInsets.only(left: 90, right: 90, top: 12, bottom: 12),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => BottomNavBar()));
                  },
                  child: Text(
                    "Login",
                    style: GoogleFonts.courgette(
                      color: Colors.white,
                      fontSize: 22,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
