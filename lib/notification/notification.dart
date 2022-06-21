import 'package:dream/login/loginpage.dart';
import 'package:dream/main.dart';
import 'package:flutter/material.dart';

void main() => runApp(notification());

class notification extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyTextPage(),
    );
  }
}

class MyTextPage extends StatefulWidget {
  const MyTextPage({Key? key}) : super(key: key);

  @override
  State<MyTextPage> createState() => _MyTextPageState();
}

class _MyTextPageState extends State<MyTextPage> {
  @override

  bool valuefirst = false;
  bool valuesecond = false;
  bool valuethird = false;
  bool valuefourth = false;

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent[700],
        elevation: 50.0,
        title: Text("NOTIFIATION"),
        leading: IconButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (_) => MyApp()));
          },
          icon: Icon(Icons.keyboard_backspace),
        ),
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              height: 35,
              width: 420,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(0),
                //border corner radius
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    //color of shadow
                    spreadRadius: 2,
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
                    child: Text('You have unread notification',
                        style: TextStyle(
                            color: Colors.grey[800],
                            // fontWeight: FontWeight.bold,
                            fontSize: 12)),
                    padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                  ),
                  SizedBox(
                    width: 90,
                  ),
                  Row(
                    children: [
                      // ),
                      SizedBox(
                        width: 10,
                      ),
                      OutlinedButton.icon(
                        // <-- OutlinedButton
                        onPressed: () {
                          // adding some properties
                          showModalBottomSheet(
                            context: context,

                            //background color for modal bottom screen
                            backgroundColor: Colors.white,
                            //elevates modal bottom screen
                            elevation: 10,
                            // gives rounded corner to modal bottom screen
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(0.0),
                            ),
                            builder: (BuildContext context) {
                              return Container(
                                  height: 400,
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Container(
                                            child: Icon(
                                              Icons.cancel_outlined,
                                              color: Colors.black,
                                              size: 30.0,
                                            ),
                                          ),
                                          SizedBox(
                                            width: 130,
                                          ),
                                          Container(
                                            child: Text('Filters ',
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 18)),
                                            padding: EdgeInsets.fromLTRB(
                                                10, 0, 0, 0),
                                          ),
                                          SizedBox(
                                            width: 100,
                                          ),
                                          Container(
                                            child: Text('RESET',
                                                style: TextStyle(
                                                    color: Colors.grey,
                                                    // fontWeight: FontWeight.bold,
                                                    fontSize: 18)),
                                            padding: EdgeInsets.fromLTRB(
                                                10, 0, 0, 0),
                                          ),
                                        ],
                                      ),
                                      Divider(
                                        thickness: 3,
                                      ),
                                      Column(
                                        children: [
                                          Container(
                                            height: 80,
                                            width: 420,
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(0),
                                              //border corner radius
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Colors.grey
                                                      .withOpacity(0.5),
                                                  //color of shadow
                                                  spreadRadius: 2,
                                                  //spread radius
                                                  blurRadius: 7,
                                                  // blur radius
                                                  offset: Offset(0,
                                                      2), // changes position of shadow
                                                ),
                                                //you can set more BoxShadow() here
                                              ],
                                            ),
                                            child: Row(
                                              children: [
                                                Container(
                                                  child: Icon(
                                                    Icons
                                                        .account_balance_wallet_outlined,
                                                    color: Colors.black,
                                                  ),
                                                  padding: EdgeInsets.fromLTRB(
                                                      8, 0, 0, 0),
                                                ),
                                                SizedBox(
                                                  width: 8,
                                                ),
                                                Flexible(
                                                  child: Column(
                                                    children: [
                                                      Container(
                                                        padding:
                                                            EdgeInsets.fromLTRB(
                                                                0, 13, 160, 0),
                                                        child: Text(
                                                            'Transactinal',
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .black,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                fontSize: 14)),
                                                      ),
                                                      SizedBox(
                                                        height: 10,
                                                      ),
                                                      Container(
                                                        padding:
                                                            EdgeInsets.fromLTRB(
                                                                15, 2, 0, 0),
                                                        child: Text(
                                                            'Updates on your withdrawals added cash, etc',
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .grey[800],
                                                                // fontWeight: FontWeight.bold,
                                                                fontSize: 12)),
                                                      ),
                                                    ],
                                                  ),
                                                  // padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                                ),
                                                Container(
                                                 child: Checkbox(
                                                    value: this.valuefirst,
                                                    onChanged: (value) {
                                                      setState(() {
                                                        this.valuefirst = value!;
                                                      });
                                                    },
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          Container(
                                            height: 80,
                                            width: 420,
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                              BorderRadius.circular(0),
                                              //border corner radius
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Colors.grey
                                                      .withOpacity(0.5),
                                                  //color of shadow
                                                  spreadRadius: 2,
                                                  //spread radius
                                                  blurRadius: 7,
                                                  // blur radius
                                                  offset: Offset(0,
                                                      2), // changes position of shadow
                                                ),
                                                //you can set more BoxShadow() here
                                              ],
                                            ),
                                            child: Row(
                                              children: [
                                                Container(
                                                  child: Icon(
                                                    Icons
                                                        .card_giftcard_outlined,
                                                    color: Colors.black,
                                                  ),
                                                  padding: EdgeInsets.fromLTRB(
                                                      8, 0, 0, 0),
                                                ),
                                                SizedBox(
                                                  width: 8,
                                                ),
                                                Flexible(
                                                  child: Column(
                                                    children: [
                                                      Container(
                                                        padding:
                                                        EdgeInsets.fromLTRB(
                                                            30, 13, 160, 0),
                                                        child: Text(
                                                            'Promotianl',
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .black,
                                                                fontWeight:
                                                                FontWeight
                                                                    .bold,
                                                                fontSize: 14)),
                                                      ),
                                                      SizedBox(
                                                        height: 10,
                                                      ),
                                                      Container(
                                                        padding:
                                                        EdgeInsets.fromLTRB(
                                                            15, 2, 0, 0),
                                                        child: Text(
                                                            'Updates on your offers, added cash, etc',
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .grey[800],
                                                                // fontWeight: FontWeight.bold,
                                                                fontSize: 12)),
                                                      ),
                                                    ],
                                                  ),
                                                  // padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                                ),
                                                SizedBox(
                                                 width: 13,
                                                ),
                                                Container(
                                                  child: Checkbox(
                                                    value: this.valuesecond,
                                                    onChanged: (value) {
                                                      setState(() {
                                                        this.valuesecond = value!;
                                                      });
                                                    },
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          Container(
                                            height: 80,
                                            width: 420,
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                              BorderRadius.circular(0),
                                              //border corner radius
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Colors.grey
                                                      .withOpacity(0.5),
                                                  //color of shadow
                                                  spreadRadius: 2,
                                                  //spread radius
                                                  blurRadius: 7,
                                                  // blur radius
                                                  offset: Offset(0,
                                                      2), // changes position of shadow
                                                ),
                                                //you can set more BoxShadow() here
                                              ],
                                            ),
                                            child: Row(
                                              children: [
                                                Container(
                                                  child: Icon(
                                                    Icons
                                                        .videogame_asset,
                                                    color: Colors.black,
                                                  ),
                                                  padding: EdgeInsets.fromLTRB(
                                                      8, 0, 0, 0),
                                                ),
                                                SizedBox(
                                                  width: 8,
                                                ),
                                                Flexible(
                                                  child: Column(
                                                    children: [
                                                      Container(
                                                        padding:
                                                        EdgeInsets.fromLTRB(
                                                            8, 13, 160, 0),
                                                        child: Text(
                                                            'Gameplay',
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .black,
                                                                fontWeight:
                                                                FontWeight
                                                                    .bold,
                                                                fontSize: 14)),
                                                      ),
                                                      SizedBox(
                                                        height: 10,
                                                      ),
                                                      Container(
                                                        padding:
                                                        EdgeInsets.fromLTRB(
                                                            15, 2, 0, 0),
                                                        child: Text(
                                                            ' Update on your joined matches,lineps,et.',
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .grey[800],
                                                                // fontWeight: FontWeight.bold,
                                                                fontSize: 12)),
                                                      ),
                                                    ],
                                                  ),
                                                  // padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                                ),
                                                SizedBox(
                                                  width: 13,
                                                ),
                                                Container(
                                                  child: Checkbox(
                                                    value: this.valuethird,
                                                    onChanged: (value) {
                                                      setState(() {
                                                        this.valuethird = value!;
                                                      });
                                                    },
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          Container(
                                            height: 80,
                                            width: 420,
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                              BorderRadius.circular(0),
                                              //border corner radius
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Colors.grey
                                                      .withOpacity(0.5),
                                                  //color of shadow
                                                  spreadRadius: 2,
                                                  //spread radius
                                                  blurRadius: 7,
                                                  // blur radius
                                                  offset: Offset(0,
                                                      2), // changes position of shadow
                                                ),
                                                //you can set more BoxShadow() here
                                              ],
                                            ),
                                            child: Row(
                                              children: [
                                                Container(
                                                  child: Icon(
                                                    Icons
                                                        .person,
                                                    color: Colors.black,
                                                  ),
                                                  padding: EdgeInsets.fromLTRB(
                                                      8, 0, 0, 0),
                                                ),
                                                SizedBox(
                                                  width: 8,
                                                ),
                                                Flexible(
                                                  child: Column(
                                                    children: [
                                                      Container(
                                                        padding:
                                                        EdgeInsets.fromLTRB(
                                                            0, 13, 160, 0),
                                                        child: Text(
                                                            'Social',
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .black,
                                                                fontWeight:
                                                                FontWeight
                                                                    .bold,
                                                                fontSize: 14)),
                                                      ),
                                                      SizedBox(
                                                        height: 10,
                                                      ),
                                                      Container(
                                                        padding:
                                                        EdgeInsets.fromLTRB(
                                                            15, 2, 0, 0),
                                                        child: Text(
                                                            'Update on Post, groups, followers,etc.',
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .grey[800],
                                                                // fontWeight: FontWeight.bold,
                                                                fontSize: 12)),
                                                      ),
                                                    ],
                                                  ),
                                                  // padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                                ),
                                                SizedBox(
                                                  width: 30,
                                                ),
                                                Container(
                                                  child: Checkbox(
                                                    value: this.valuefourth,
                                                    onChanged: (value) {
                                                      setState(() {
                                                        this.valuefourth = value!;
                                                      });
                                                    },
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),

                                    ],
                                  ));
                            },
                          );
                        },
                        icon: Icon(
                          Icons.filter_list,
                          color: Colors.black,
                          size: 24.0,
                        ),
                        label: Text(''),
                      ),
                      OutlinedButton.icon(
                        // <-- OutlinedButton
                        onPressed: () {
                          // adding some properties
                          showModalBottomSheet(
                            context: context,

                            //background color for modal bottom screen
                            backgroundColor: Colors.white,
                            //elevates modal bottom screen
                            elevation: 10,
                            // gives rounded corner to modal bottom screen
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(0.0),
                            ),
                            builder: (BuildContext context) {
                              return Container(
                                  height: 50,
                                  child: Column(
                                    children: [
                                      Container(
                                        padding:
                                            EdgeInsets.fromLTRB(0, 0, 0, 0),
                                        child: Text(
                                            'Mark All Notifications as Read',
                                            style: TextStyle(
                                              fontSize: 15,
                                              // fontWeight: FontWeight.bold,
                                            )),
                                      ),
                                    ],
                                  ));
                            },
                          );
                        },
                        icon: Icon(
                          Icons.drag_indicator,
                          color: Colors.black,
                          size: 24.0,
                        ),
                        label: Text(''),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Column(
              children: [
                Container(
                  height: 80,
                  width: 420,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(0),
                    //border corner radius
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        //color of shadow
                        spreadRadius: 2,
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
                        child: Icon(
                          Icons.card_giftcard_outlined,
                          color: Colors.black,
                        ),
                        padding: EdgeInsets.fromLTRB(8, 0, 0, 0),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Flexible(
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.fromLTRB(8, 13, 0, 0),
                              child: Text(
                                  'Congratulation! You have got a 90% discount coupon upto Rs.50.Application in Select contests.',
                                  style: TextStyle(
                                      color: Colors.grey[800],
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14)),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              padding: EdgeInsets.fromLTRB(0, 2, 290, 0),
                              child: Text('8 days ago',
                                  style: TextStyle(
                                      color: Colors.grey[800],
                                      // fontWeight: FontWeight.bold,
                                      fontSize: 12)),
                            ),
                          ],
                        ),
                        // padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            //2
            Column(
              children: [
                Container(
                  height: 80,
                  width: 420,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(0),
                    //border corner radius
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        //color of shadow
                        spreadRadius: 2,
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
                        child: Icon(
                          Icons.card_giftcard_outlined,
                          color: Colors.black,
                        ),
                        padding: EdgeInsets.fromLTRB(8, 0, 0, 0),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Flexible(
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.fromLTRB(8, 13, 0, 0),
                              child: Text(
                                  'FLAT 50% OFF up to Rs.30 per match on the TATA IPL Mega Contests! Use before Mar 29.',
                                  style: TextStyle(
                                      color: Colors.grey[800],
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14)),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              padding: EdgeInsets.fromLTRB(0, 2, 290, 0),
                              child: Text('16 days ago',
                                  style: TextStyle(
                                      color: Colors.grey[800],
                                      // fontWeight: FontWeight.bold,
                                      fontSize: 12)),
                            ),
                          ],
                        ),
                        // padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            //2
            SizedBox(
              height: 15,
            ),

            Column(
              children: [
                Container(
                  height: 80,
                  width: 420,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(0),
                    //border corner radius
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        //color of shadow
                        spreadRadius: 2,
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
                        child: Icon(
                          Icons.card_giftcard_outlined,
                          color: Colors.black,
                        ),
                        padding: EdgeInsets.fromLTRB(8, 0, 0, 0),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Flexible(
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.fromLTRB(8, 13, 0, 0),
                              child: Text(
                                  'FLAT 50% Discount on the TATA IPL Mega Contests! Valid for one-time use only.',
                                  style: TextStyle(
                                      color: Colors.grey[800],
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14)),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              padding: EdgeInsets.fromLTRB(0, 2, 290, 0),
                              child: Text('16 days ago',
                                  style: TextStyle(
                                      color: Colors.grey[800],
                                      // fontWeight: FontWeight.bold,
                                      fontSize: 12)),
                            ),
                          ],
                        ),
                        // padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            //2
            SizedBox(
              height: 15,
            ),
            Column(
              children: [
                Container(
                  height: 80,
                  width: 420,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(0),
                    //border corner radius
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        //color of shadow
                        spreadRadius: 2,
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
                        child: Icon(
                          Icons.card_giftcard_outlined,
                          color: Colors.black,
                        ),
                        padding: EdgeInsets.fromLTRB(8, 0, 0, 0),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Flexible(
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.fromLTRB(8, 13, 0, 0),
                              child: Text(
                                  'Congratulations! You have got a 75% Discount coupon worth Rs. Application in select contests',
                                  style: TextStyle(
                                      // color: Colors.grey[800],
                                      //fontWeight: FontWeight.bold,
                                      fontSize: 14)),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              padding: EdgeInsets.fromLTRB(0, 2, 290, 0),
                              child: Text('a year ago',
                                  style: TextStyle(
                                      //color: Colors.grey[800],
                                      // fontWeight: FontWeight.bold,
                                      fontSize: 12)),
                            ),
                          ],
                        ),
                        // padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
