import 'package:dream/tataipl.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(fire());

class fire extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyFire(),
    );
  }
}

class MyFire extends StatefulWidget {
  const MyFire({Key? key}) : super(key: key);

  @override
  State<MyFire> createState() => _MyFireState();
}

class _MyFireState extends State<MyFire> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: 200,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [Colors.white, Colors.orange],
              )),
              child: Row(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 110),
                    child: IconButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (_) => TATAIPL()));
                      },
                      icon: Icon(
                        Icons.cancel_outlined,
                        size: 40,
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(95, 0, 0, 110),
                    child: new Text(
                      ' I N T R O D U C I N G',
                      style: TextStyle(
                          color: Colors.redAccent,
                          fontWeight: FontWeight.bold,
                          fontSize: 12),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 18,
            ),
            Container(
              child: RichText(
                  text: TextSpan(
                      text: 'Just ',
                      style: TextStyle(color: Colors.black, fontSize: 20),
                      children: <TextSpan>[
                    TextSpan(
                      text: ' double tap the Contest Join button',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                      children: <TextSpan>[
                        TextSpan(
                          text: 'and you are done!',
                          style: TextStyle(color: Colors.black, fontSize: 20),
                        )
                      ],
                    ),
                  ])),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 350,
              child: Column(
                children: [
                  SizedBox(
                    height: 12,
                  ),
                  Row(
                    children: [
                      Container(
                          decoration: BoxDecoration(
                            color: Colors.blueAccent,
                            shape: BoxShape.circle,
                          ),
                          height: 30,
                          width: 30,
                          child: Text(
                            ' 1',
                            style: TextStyle(
                                color: Colors.black,
                                //  fontWeight: FontWeight.bold,
                                fontSize: 20),
                          )),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                          child: Text('Select a team to join contests with',
                              style: TextStyle(
                                  color: Colors.black,
                                  // fontWeight: FontWeight.bold,
                                  fontSize: 12))),
                    ],
                  ),
                  SizedBox(
                    height: 14,
                  ),
                  Container(
                      decoration: BoxDecoration(
                        color: Colors.orangeAccent[100],
                        borderRadius: BorderRadius.circular(10),
                        //border corner radius
                        boxShadow: [
                          BoxShadow(
                            color: Colors.white.withOpacity(0.5),
                            //color of shadow
                            spreadRadius: 0,
                            //spread radius
                            blurRadius: 0,
                            // blur radius
                            offset: Offset(0, 0), // changes position of shadow
                          ),
                          //you can set more BoxShadow() here
                        ],
                      ),
                      height: 40,
                      width: 300,
                      child: Row(
                        children: [
                          Container(
                            child: Icon(
                              Icons.local_fire_department_outlined,
                              color: Colors.red,
                              size: 20.0,
                            ),
                          ),
                          Container(
                            child: Text('Quick Join Made',
                                style: TextStyle(
                                    color: Colors.black,
                                    // fontWeight: FontWeight.bold,
                                    fontSize: 12)),
                          ),
                          Container(
                            child: Icon(
                              Icons.looks_one_outlined,
                              color: Colors.black,
                              size: 20.0,
                            ),
                          ),
                          const VerticalDivider(
                            width: 0,
                            thickness: 1,
                            indent: 5,
                            endIndent: 0,
                            color: Colors.grey,
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Container(
                            child: Text('Join with Team 1',
                                style: TextStyle(
                                    color: Colors.black,
                                    // fontWeight: FontWeight.bold,
                                    fontSize: 12)),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Container(
                            child: Icon(
                              Icons.offline_pin_outlined,
                              color: Colors.black,
                              size: 20.0,
                            ),
                          ),
                        ],
                      )),
                ],
              ),
              decoration: BoxDecoration(
                color: Colors.blue[100],
                borderRadius: BorderRadius.circular(10),
                //border corner radius
                boxShadow: [
                  BoxShadow(
                    color: Colors.white.withOpacity(0.5),
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
              height: 130,
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 350,
              child: Column(
                children: [
                  SizedBox(
                    height: 12,
                  ),
                  Row(
                    children: [
                      Container(
                          decoration: BoxDecoration(
                            color: Colors.blueAccent,
                            shape: BoxShape.circle,
                          ),
                          height: 30,
                          width: 30,
                          child: Text(
                            ' 2',
                            style: TextStyle(
                                color: Colors.black,
                                //  fontWeight: FontWeight.bold,
                                fontSize: 20),
                          )),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                          child: Text('Double tap to join contests instanly',
                              style: TextStyle(
                                  color: Colors.black,
                                  // fontWeight: FontWeight.bold,
                                  fontSize: 12))),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Column(
                    children: [
                      Container(
                        alignment: Alignment.center,
                        width: 50,
                        height: 20,
                        margin: EdgeInsets.all(1),
                        padding: EdgeInsets.all(2),
                        child: Text(
                          'JOIN',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 13),
                        ),
                        decoration: BoxDecoration(
                            color: Colors.green[900],
                            border: Border(
                                bottom: BorderSide(
                              color: Colors.green,
                              width: 1,
                            ))),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 14,
                  ),
                ],
              ),
              decoration: BoxDecoration(
                color: Colors.blue[100],
                borderRadius: BorderRadius.circular(10),
                //border corner radius
                boxShadow: [
                  BoxShadow(
                    color: Colors.white.withOpacity(0.5),
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
              height: 130,
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.pink[50],
                borderRadius: BorderRadius.circular(0),
                //border corner radius
                boxShadow: [
                  BoxShadow(
                    color: Colors.white.withOpacity(0.5),
                    //color of shadow
                    spreadRadius: 0,
                    //spread radius
                    blurRadius: 0,
                    // blur radius
                    offset: Offset(0, 2), // changes position of shadow
                  ),
                  //you can set more BoxShadow() here
                ],
              ),
              width: 410,
              height: 100,
              child: Column(
                children: <Widget>[
                  Row(
                    children: [
                      SizedBox(
                        height: 40,
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                        child: Icon(
                          Icons.local_offer_outlined,
                          color: Colors.red,
                          size: 20.0,
                        ),
                      ),
                      SizedBox(
                        width: 40,
                      ),
                      Container(
                        //padding: EdgeInsets.fromLTRB(95, 0, 0, 110),
                        child: new Text(
                          'Hightest discount automatically applied ',
                          style: TextStyle(
                              color: Colors.black,
                              //fontWeight: FontWeight.bold,
                              fontSize: 16),
                        ),
                      ),
                    ],
                  ),
                  Divider(
                    color: Colors.pink,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        height: 40,
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                        child: Icon(
                          Icons.phone_android_outlined,
                          color: Colors.red,
                          size: 20.0,
                        ),
                      ),
                      SizedBox(
                        width: 40,
                      ),
                      Flexible(
                        //padding: EdgeInsets.fromLTRB(95, 0, 0, 110),
                        child: new Text(
                          'Context filled up ? Get redirected to similar contests',
                          style: TextStyle(
                              color: Colors.black,
                              //fontWeight: FontWeight.bold,
                              fontSize: 16),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
                padding: EdgeInsets.all(8.0),
                child: Text(
                    'I accept Dream11s T&Cs and confirm that i am not a resident of Andhra Pradesh. Nagakand, Odisha, Shikkim or Telgana. '
                    'i am Least 18 year of age or above and agree to be contacted by Dream11 and their partners. ')),
            SizedBox(
              height: 20,
            ),
            Container(
                padding: EdgeInsets.fromLTRB(0, 0, 230, 0),
                child: Text('Dont show this again')),
            SizedBox(
              height: 20,
            ),
            Container(
                child: FlatButton(
              child: Text(
                'ACCEPT & ENTER',
                style: TextStyle(fontSize: 20.0),
              ),
              color: Colors.green[900],
              textColor: Colors.white,
              onPressed: () {},
            )),
          ],
        ),
      ),
    );
  }
}
