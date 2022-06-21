import 'package:dotted_border/dotted_border.dart';
import 'package:dream/login/loginpage.dart';
import 'package:dream/main.dart';
import 'package:flutter/material.dart';

void main() => runApp(collect());

class collect extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Colletct(),
    );
  }
}

class Colletct extends StatefulWidget {
  const Colletct({Key? key}) : super(key: key);

  @override
  State<Colletct> createState() => _ColletctState();
}

class _ColletctState extends State<Colletct> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent[700],
        elevation: 0.0,
        title: Text("My Balance"),
        leading: IconButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (_) => MyApp()));
          },
          icon: Icon(Icons.keyboard_backspace),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 190,
            width: 500,
            child: Container(
              child: Image.asset(
                "assets/images/coll.png",
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(60, 00, 0, 0),
                child: Icon(
                  Icons.money,
                  color: Colors.green,
                  size: 20.0,
                ),
              ),
              Container(
                  padding: EdgeInsets.fromLTRB(0, 00, 0, 0),
                  child: Text('Up to ₹500 Cash Bonus per friend',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 16))),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Container(
              padding: EdgeInsets.fromLTRB(13, 00, 0, 0),
              child: Text(
                  'Collect 10% every they use their amount added to pay a contest antry ! ',
                  style: TextStyle(
                      color: Colors.grey,
                      // fontWeight: FontWeight.bold,
                      fontSize: 16))),
          SizedBox(
            height: 10,
          ),
          Container(
              padding: EdgeInsets.fromLTRB(13, 00, 0, 0),
              child: Text('@ HOW IT WORKS',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 16))),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 37,
            width: 380,
            child: DottedBorder(
              color: Colors.black,
              strokeWidth: 1,
              child: Row(
                children: [
                  Container(
                      padding: EdgeInsets.fromLTRB(13, 7, 0, 0),
                      child: Text('namansolanki')),
                  SizedBox(
                    width: 180,
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(60, 00, 0, 0),
                    child: Icon(
                      Icons.copy,
                      color: Colors.black,
                      size: 20.0,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: 380,
            padding: EdgeInsets.fromLTRB(0, 15, 0, 0),
            child: FlatButton(
              child: Text(
                'INVITED PHONE CONTACTS',
                style: TextStyle(fontSize: 20.0),
              ),
              color: Colors.green[900],
              textColor: Colors.white,
              onPressed: () {},
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 37,
            width: 380,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(0.0),
              border: Border.all(
                color: Colors.black,
                width: 2.0,
              ),
            ),
            child: Row(
              children: [
                Container(
                  padding: EdgeInsets.fromLTRB(60, 00, 0, 0),
                  child: Icon(
                    Icons.wifi_calling_outlined,
                    color: Colors.black,
                    size: 20.0,
                  ),
                ),
                Container(
                    padding: EdgeInsets.fromLTRB(13, 00, 0, 0),
                    child: Text('SHARE ON WATSAPP',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 16))),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 37,
            width: 380,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(0.0),
              border: Border.all(
                color: Colors.black,
                width: 2.0,
              ),
            ),
            child: Row(
              children: [
                Container(
                  padding: EdgeInsets.fromLTRB(60, 00, 0, 0),
                  child: Icon(
                    Icons.share,
                    color: Colors.black,
                    size: 20.0,
                  ),
                ),
                Container(
                    padding: EdgeInsets.fromLTRB(13, 00, 0, 0),
                    child: Text('MORE OPTIONS',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 16))),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 37,
            width: 380,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(0),
              //border corner radius
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  //color of shadow
                  spreadRadius: 5,
                  //spread radius
                  blurRadius: 7,
                  // blur radius
                  offset: Offset(0, 2), // changes position of shadow
                ),
                //you can set more BoxShadow() here
              ],
            ),
            child: Row(
              children: [
                Container(
                  padding: EdgeInsets.fromLTRB(20, 00, 0, 0),
                  child: Icon(
                    Icons.person,
                    color: Colors.black,
                    size: 20.0,
                  ),
                ),
                Container(
                    padding: EdgeInsets.fromLTRB(13, 00, 0, 0),
                    child: Text('You have not invited any friends yet!',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 16))),
              ],
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Container(
              padding: EdgeInsets.fromLTRB(40, 00, 0, 0),
              child: Text('Tap to have Fair rules for inviting friends',
                  style: TextStyle(
                      color: Colors.black,
                     // fontWeight: FontWeight.bold,
                      fontSize: 13))),
        ],
      ),
    );
  }
}
