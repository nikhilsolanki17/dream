import 'package:dream/login/loginpage.dart';
import 'package:dream/main.dart';
import 'package:flutter/material.dart';

void main() => runApp(howto());

class howto extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Howtoply(),
    );
  }
}
class Howtoply extends StatefulWidget {
  const Howtoply({Key? key}) : super(key: key);

  @override
  State<Howtoply> createState() => _HowtoplyState();
}

class _HowtoplyState extends State<Howtoply> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0.0,
        title: Text("My Level"),
        leading: IconButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (_) => MyApp()));
          },
          icon: Icon(Icons.keyboard_backspace),
        ),
      ),
      body:  Stack(
    children: <Widget>[
      Container(
        padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
        child: Container(
          child: Image.asset(
            "assets/images/lucknowd.png",
            height: 400,
            width: 400,
          ),
        ),
          ),
    Container(
        child: Text(
    'Show text here',
    style: TextStyle(color: Colors.pink, fontWeight: FontWeight.bold, fontSize: 22.0),
    )),
    ],
    ),

    );
  }
}
