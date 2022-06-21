import 'package:dream/login/loginpage.dart';
import 'package:dream/main.dart';
import 'package:flutter/material.dart';

void main() => runApp(balance());

class balance extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Mybalcnce(),
    );
  }
}

class Mybalcnce extends StatefulWidget {
  const Mybalcnce({Key? key}) : super(key: key);

  @override
  State<Mybalcnce> createState() => _MybalcnceState();
}

class _MybalcnceState extends State<Mybalcnce> {
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
        children: <Widget>[
          Container(
            child: Container(
              height: 435,
              //  width: MediaQuery.of(context).size.width,
              color: Colors.white,
              child: Card(
                child: ListView(
                  shrinkWrap: true,
                  children: <Widget>[
                    Container(
                        padding: EdgeInsets.fromLTRB(118, 10, 50, 0),
                        child: Text('TOTAL BALANCE',
                            style: TextStyle(
                                color: Colors.grey,
                                //  fontWeight: FontWeight.bold,
                                fontSize: 18))),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                        padding: EdgeInsets.fromLTRB(180, 10, 50, 0),
                        child: Text('₹0',
                            style: TextStyle(
                                color: Colors.black,
                                //  fontWeight: FontWeight.bold,
                                fontSize: 18))),
                    SizedBox(
                      height: 0,
                    ),
                    Column(
                      children: [
                        Container(
                          width: 200,
                          margin: EdgeInsets.all(25),
                          child: FlatButton(
                            child: Text(
                              'ADD CASH',
                              style: TextStyle(fontSize: 20.0),
                            ),
                            color: Colors.green[900],
                            textColor: Colors.white,
                            onPressed: () {},
                          ),
                        ),
                      ],
                    ),
                    Divider(
                      thickness: 3,
                    ),
                    Column(
                      children: [
                        Container(
                            padding: EdgeInsets.fromLTRB(0, 00, 186, 0),
                            child: Text('AMOUNT ADDED (UNUTILISED)',
                                style: TextStyle(
                                    color: Colors.grey,
                                    //  fontWeight: FontWeight.bold,
                                    fontSize: 13))),
                        Row(
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.fromLTRB(7, 00, 0, 0),
                              child: Text('₹0',
                                  style: TextStyle(
                                      color: Colors.grey,
                                      //  fontWeight: FontWeight.bold,
                                      fontSize: 13)),
                            ),
                            Container(
                              padding: EdgeInsets.fromLTRB(350, 00, 0, 0),
                              child: Icon(
                                Icons.looks_one_outlined,
                                color: Colors.blue,
                                size: 20.0,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Divider(
                      thickness: 3,
                    ),
                    Column(
                      children: [
                        Container(
                            padding: EdgeInsets.fromLTRB(0, 00, 320, 0),
                            child: Text('WINNINGS',
                                style: TextStyle(
                                    color: Colors.grey,
                                    //  fontWeight: FontWeight.bold,
                                    fontSize: 13))),
                        Row(
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.fromLTRB(7, 00, 0, 0),
                              child: Text('₹0',
                                  style: TextStyle(
                                      color: Colors.grey,
                                      //  fontWeight: FontWeight.bold,
                                      fontSize: 13)),
                            ),
                            Container(
                              padding: EdgeInsets.fromLTRB(350, 00, 0, 0),
                              child: Icon(
                                Icons.looks_one_outlined,
                                color: Colors.blue,
                                size: 20.0,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Divider(
                      thickness: 3,
                    ),
                    Column(
                      children: [
                        Container(
                            padding: EdgeInsets.fromLTRB(0, 00, 308, 0),
                            child: Text('CASH BONUS',
                                style: TextStyle(
                                    color: Colors.grey,
                                    //  fontWeight: FontWeight.bold,
                                    fontSize: 13))),
                        Row(
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.fromLTRB(7, 00, 0, 0),
                              child: Text('₹0',
                                  style: TextStyle(
                                      color: Colors.grey,
                                      //  fontWeight: FontWeight.bold,
                                      fontSize: 13)),
                            ),
                            Container(
                              padding: EdgeInsets.fromLTRB(350, 00, 0, 0),
                              child: Icon(
                                Icons.looks_one_outlined,
                                color: Colors.blue,
                                size: 20.0,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Column(
                      children: [
                        Container(
                          height: 35,
                          width: 380,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.lightGreenAccent,
                            ),
                            borderRadius: BorderRadius.circular(0.0),
                          ),
                          child: Row(
                            children: [
                              Container(
                                padding: EdgeInsets.fromLTRB(9, 00, 0, 0),
                                child: Icon(
                                  Icons.money,
                                  color: Colors.green,
                                  size: 20.0,
                                ),
                              ),
                              Column(
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        padding:
                                            EdgeInsets.fromLTRB(7, 00, 0, 0),
                                        child: Text(
                                            'Maximum usable Cash Bonus per match=10% of Entry Fees',
                                            style: TextStyle(
                                                color: Colors.grey,
                                                //  fontWeight: FontWeight.bold,
                                                fontSize: 10)),
                                      ),
                                      Container(
                                        padding:
                                            EdgeInsets.fromLTRB(13, 5, 0, 0),
                                        child: Icon(
                                          Icons.cancel_outlined,
                                          color: Colors.black,
                                          size: 15.0,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Container(
                                    padding: EdgeInsets.fromLTRB(0, 00, 240, 0),
                                    child: Text('Known more',
                                        style: TextStyle(
                                            color: Colors.black,
                                            decoration:
                                                TextDecoration.underline,
                                            //  fontWeight: FontWeight.bold,
                                            fontSize: 10)),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            height: 70,
            width: 395,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(0),
              //border corner radius
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  //color of shadow
                  spreadRadius: 3,
                  //spread radius
                  blurRadius: 5,
                  // blur radius
                  offset: Offset(0, 2), // changes position of shadow
                ),
                //you can set more BoxShadow() here
              ],
            ),
            child: Container(
              padding: EdgeInsets.fromLTRB(10, 20, 0, 0),
              child: Text("My Recent Transactions",
                  style: TextStyle(
                      color: Colors.black,
                      //  fontWeight: FontWeight.bold,
                      fontSize: 14)),
            ),
          ),
          Container(
            height: 70,
            width: 395,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(0),
              //border corner radius
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  //color of shadow
                  spreadRadius: 3,
                  //spread radius
                  blurRadius: 5,
                  // blur radius
                  offset: Offset(0, 2), // changes position of shadow
                ),
                //you can set more BoxShadow() here
              ],
            ),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.fromLTRB(0, 8, 240, 0),
                  child: Text("Manage Payments ",
                      style: TextStyle(
                          color: Colors.black,
                          //  fontWeight: FontWeight.bold,
                          fontSize: 14)),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(0, 5, 150, 0),
                  child: Text("Add/Remove Cards,Wallets,etc.",
                      style: TextStyle(
                          color: Colors.grey,
                          //  fontWeight: FontWeight.bold,
                          fontSize: 14)),
                ),
              ],
            ),
          ),
          Container(
            height: 70,
            width: 395,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(0),
              //border corner radius
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  //color of shadow
                  spreadRadius: 3,
                  //spread radius
                  blurRadius: 5,
                  // blur radius
                  offset: Offset(0, 2), // changes position of shadow
                ),
                //you can set more BoxShadow() here
              ],
            ),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.fromLTRB(0, 8, 280, 0),
                  child: Text("Refer and Earn",
                      style: TextStyle(
                          color: Colors.black,
                          //  fontWeight: FontWeight.bold,
                          fontSize: 14)),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(0, 5, 50, 0),
                  child:
                      Text("Invite a friend and collect up to ₹500 cash bonus",
                          style: TextStyle(
                              color: Colors.grey,
                              //  fontWeight: FontWeight.bold,
                              fontSize: 14)),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 40,
            width: 390,
            decoration: BoxDecoration(
              color: Colors.blue[100],
              borderRadius: BorderRadius.circular(0),
              //border corner radius
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
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
            child: Row(
              children: [

                Container(
                  padding: EdgeInsets.fromLTRB(7, 00, 0, 0),
                  child: Text(' ?  Have a question about your balance?  ',
                      style: TextStyle(
                          color: Colors.black,
                          //  fontWeight: FontWeight.bold,
                          fontSize: 13)),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(7, 00, 0, 0),
                  child: Text(' Get help ',
                      style: TextStyle(
                          color: Colors.blue[900],
                            fontWeight: FontWeight.bold,
                          fontSize: 13)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
