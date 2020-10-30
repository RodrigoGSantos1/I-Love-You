import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ilove_you1/Cadastro.dart';
import 'package:ilove_you1/Login.dart';


class Inicial extends StatefulWidget {
  @override
  _InicialState createState() => _InicialState();
}

class _InicialState extends State<Inicial> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/fundo.jpg"), fit: BoxFit.cover)),
        child: Container(
            alignment: Alignment.center,
            child: Stack(
              children: <Widget>[
                Container(
                  color: Colors.black54,
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(top: 70, left: 30, right: 280),
                        child: Image.asset(
                          "images/Logo.png",
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 20, left: 50, right: 50, bottom: 100),
                        child: Text(
                          "Vamos Juntos Guardar as Nossas Memórias Mais Bonitas...",
                          style: GoogleFonts.courgette(
                            color: Colors.white,
                            fontSize: 25,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 150, left: 50, right: 50),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            color: Colors.black54,
                          ),
                          child: MaterialButton(
                            padding: EdgeInsets.only(
                                left: 90, right: 90, top: 12, bottom: 12),
                            onPressed: () {
                              Navigator.push(
                                  context, MaterialPageRoute(builder: (context) => Cadastro()));
                            },
                            child: Text(
                              "Cadastrar",
                              style: GoogleFonts.courgette(
                                color: Colors.white,
                                fontSize: 22,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 30, left: 50, right: 50, bottom:1 ),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            color: Colors.white,
                          ),
                          child: MaterialButton(
                            padding: EdgeInsets.only(
                                left: 105, right: 105, top: 12, bottom: 12),
                            onPressed: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) => Login()));
                            },
                            child: Text(
                              "Entrar",
                              style: GoogleFonts.courgette(
                                color: Colors.black,
                                fontSize: 22,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
