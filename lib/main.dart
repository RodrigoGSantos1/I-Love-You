import 'package:flutter/material.dart';
import 'Inicial.dart';

void main()=> runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Splash(),
      debugShowCheckedModeBanner: false,
    );
  }
}
class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash>{
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.pink,
      padding: EdgeInsets.fromLTRB(30, 150, 30, 10),
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.fromLTRB(30, 150, 30, 200),
            child: Image.asset("images/Logo.png"),
          ),
        ],
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3 )).then((_){
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => Inicial() )
      );
    });
  }

}


