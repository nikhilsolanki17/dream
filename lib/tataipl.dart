import 'package:dream/fire/fire.dart';
import 'package:dream/login/loginpage.dart';
import 'package:dream/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:toggle_switch/toggle_switch.dart';

void main() => runApp(TATAIPL());

class TATAIPL extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyText(),
    );
  }
}

class MyText extends StatefulWidget {
  const MyText({Key? key}) : super(key: key);

  @override
  State<MyText> createState() => _MyTextState();
}

class _MyTextState extends State<MyText> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0.0,
        title: Row(
          children: [
            Column(
              children: [
                Container(
                    child: Text("LKN vs DC",
                        style: TextStyle(
                            color: Colors.white,
                            // fontWeight: FontWeight.bold,
                            fontSize: 16))),
                Container(
                    child: Text("1h 59m left",
                        style: TextStyle(
                            color: Colors.white,
                            // fontWeight: FontWeight.bold,
                            fontSize: 12))),
              ],
            ),
            SizedBox(
              width: 80,
            ),
            //fire
            Container(
              child: Row(
                children: [
                  Container(
                    child: IconButton(
                      icon: Icon(Icons.local_fire_department_outlined),
                      tooltip: 'Comment Icon',
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => fire()),
                        );
                      },
                    ),
                  ),
                  Container(
                    child: OutlinedButton.icon(
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
                                height: 250,
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          padding:
                                              EdgeInsets.fromLTRB(10, 0, 0, 0),
                                          // child: Icon(
                                          //   Icons.clear_rounded,
                                          //   color: Colors.black,
                                          //   size: 28.0,
                                          // ),
                                        ),
                                        Container(
                                          padding:
                                              EdgeInsets.fromLTRB(90, 0, 0, 0),
                                          child: Text('Set Reminders',
                                              style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold,
                                              )),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Container(
                                      padding:
                                          EdgeInsets.fromLTRB(0, 0, 100, 0),
                                      child: Text(
                                          'Lineup Announcement (if available)',
                                          style: TextStyle(
                                              fontSize: 15, color: Colors.grey
                                              //  fontWeight: FontWeight.bold,
                                              )),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    //yha prjdjdj
                                    Container(
                                      width: 400,
                                      child: Column(
                                        children: [
                                          Row(
                                            children: [
                                              Container(
                                                  padding: EdgeInsets.fromLTRB(
                                                      0, 25, 0, 0),
                                                  child: Text(
                                                      'Match - CSK VS BLR',
                                                      style: TextStyle(
                                                          color: Colors.black,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 20))),
                                              SizedBox(
                                                width: 30,
                                              ),
                                              Container(
                                                padding: EdgeInsets.fromLTRB(
                                                    10, 20, 0, 0),
                                                child: ToggleSwitch(
                                                  minWidth: 50.0,
                                                  cornerRadius: 20.0,
                                                  activeBgColors: [
                                                    [Colors.green[800]!],
                                                    [Colors.red[800]!]
                                                  ],
                                                  activeFgColor: Colors.white,
                                                  inactiveBgColor: Colors.grey,
                                                  inactiveFgColor: Colors.white,
                                                  initialLabelIndex: 1,
                                                  totalSwitches: 2,
                                                  labels: ['on', 'off'],
                                                  radiusStyle: true,
                                                  onToggle: (index) {
                                                    print(
                                                        'switched to: $index');
                                                  },
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(0),
                                        //border corner radius
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey.withOpacity(0.5),
                                            //color of shadow
                                            spreadRadius: 1,
                                            //spread radius
                                            blurRadius: 2,
                                            // blur radius
                                            offset: Offset(0,
                                                2), // changes position of shadow
                                          ),
                                          //you can set more BoxShadow() here
                                        ],
                                      ),
                                      height: 80,
                                    ),
                                    Container(
                                      width: 400,
                                      child: Column(
                                        children: [
                                          Row(
                                            children: [
                                              Container(
                                                  padding: EdgeInsets.fromLTRB(
                                                      0, 25, 0, 0),
                                                  child: Text('Tour TATA IPL',
                                                      style: TextStyle(
                                                          color: Colors.black,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 20))),
                                              SizedBox(
                                                width: 90,
                                              ),
                                              Container(
                                                padding: EdgeInsets.fromLTRB(
                                                    10, 20, 0, 0),
                                                child: ToggleSwitch(
                                                  minWidth: 50.0,
                                                  cornerRadius: 20.0,
                                                  activeBgColors: [
                                                    [Colors.green[800]!],
                                                    [Colors.red[800]!]
                                                  ],
                                                  activeFgColor: Colors.white,
                                                  inactiveBgColor: Colors.grey,
                                                  inactiveFgColor: Colors.white,
                                                  initialLabelIndex: 1,
                                                  totalSwitches: 2,
                                                  labels: ['on', 'off'],
                                                  radiusStyle: true,
                                                  onToggle: (index) {
                                                    print(
                                                        'switched to: $index');
                                                  },
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(0),
                                        //border corner radius
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey.withOpacity(0.5),
                                            //color of shadow
                                            spreadRadius: 1,
                                            //spread radius
                                            blurRadius: 2,
                                            // blur radius
                                            offset: Offset(0,
                                                2), // changes position of shadow
                                          ),
                                          //you can set more BoxShadow() here
                                        ],
                                      ),
                                      height: 80,
                                    ),
                                  ],
                                ));
                          },
                        );
                      },
                      icon: Icon(
                        Icons.notifications_outlined,
                        color: Colors.white,
                        size: 24.0,
                      ),
                      label: Text(''),
                    ),
                  ),
                  Container(
                    child: IconButton(
                      icon: Icon(Icons.account_balance_wallet_outlined),
                      tooltip: 'Setting Icon',
                      onPressed: () {
                        showGeneralDialog(
                          context: context,
                          //  barrierDismissible: true,
                          //transitionDuration: Duration(milliseconds: 800),
                          // barrierLabel: MaterialLocalizations.of(context).dialogLabel,
                          // barrierColor: Colors.black.withOpacity(0.5),
                          pageBuilder: (context, _, __) {
                            return Container(
                              child: Column(
                                // mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  Container(
                                    height: 500,
                                    //  width: MediaQuery.of(context).size.width,
                                    color: Colors.white,
                                    child: Card(
                                      child: ListView(
                                        shrinkWrap: true,
                                        children: <Widget>[
                                          Container(
                                              padding: EdgeInsets.fromLTRB(
                                                  118, 10, 50, 0),
                                              child: Text('TOTAL BALANCE',
                                                  style: TextStyle(
                                                      color: Colors.grey,
                                                      //  fontWeight: FontWeight.bold,
                                                      fontSize: 18))),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Container(
                                              padding: EdgeInsets.fromLTRB(
                                                  180, 10, 50, 0),
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
                                                    style: TextStyle(
                                                        fontSize: 20.0),
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
                                                  padding: EdgeInsets.fromLTRB(
                                                      0, 00, 186, 0),
                                                  child: Text(
                                                      'AMOUNT ADDED (UNUTILISED)',
                                                      style: TextStyle(
                                                          color: Colors.grey,
                                                          //  fontWeight: FontWeight.bold,
                                                          fontSize: 13))),
                                              Row(
                                                children: <Widget>[
                                                  Container(
                                                    padding:
                                                        EdgeInsets.fromLTRB(
                                                            7, 00, 0, 0),
                                                    child: Text('₹0',
                                                        style: TextStyle(
                                                            color: Colors.grey,
                                                            //  fontWeight: FontWeight.bold,
                                                            fontSize: 13)),
                                                  ),
                                                  Container(
                                                    padding:
                                                        EdgeInsets.fromLTRB(
                                                            350, 00, 0, 0),
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
                                                  padding: EdgeInsets.fromLTRB(
                                                      0, 00, 320, 0),
                                                  child: Text('WINNINGS',
                                                      style: TextStyle(
                                                          color: Colors.grey,
                                                          //  fontWeight: FontWeight.bold,
                                                          fontSize: 13))),
                                              Row(
                                                children: <Widget>[
                                                  Container(
                                                    padding:
                                                        EdgeInsets.fromLTRB(
                                                            7, 00, 0, 0),
                                                    child: Text('₹0',
                                                        style: TextStyle(
                                                            color: Colors.grey,
                                                            //  fontWeight: FontWeight.bold,
                                                            fontSize: 13)),
                                                  ),
                                                  Container(
                                                    padding:
                                                        EdgeInsets.fromLTRB(
                                                            350, 00, 0, 0),
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
                                                  padding: EdgeInsets.fromLTRB(
                                                      0, 00, 308, 0),
                                                  child: Text('CASH BONUS',
                                                      style: TextStyle(
                                                          color: Colors.grey,
                                                          //  fontWeight: FontWeight.bold,
                                                          fontSize: 13))),
                                              Row(
                                                children: <Widget>[
                                                  Container(
                                                    padding:
                                                        EdgeInsets.fromLTRB(
                                                            7, 00, 0, 0),
                                                    child: Text('₹0',
                                                        style: TextStyle(
                                                            color: Colors.grey,
                                                            //  fontWeight: FontWeight.bold,
                                                            fontSize: 13)),
                                                  ),
                                                  Container(
                                                    padding:
                                                        EdgeInsets.fromLTRB(
                                                            350, 00, 0, 0),
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
                                                    color:
                                                        Colors.lightGreenAccent,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          0.0),
                                                ),
                                                child: Row(
                                                  children: [
                                                    Container(
                                                      padding:
                                                          EdgeInsets.fromLTRB(
                                                              9, 00, 0, 0),
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
                                                                  EdgeInsets
                                                                      .fromLTRB(
                                                                          7,
                                                                          00,
                                                                          0,
                                                                          0),
                                                              child: Text(
                                                                  'Maximum usable Cash Bonus per match=10% of Entry Fees',
                                                                  style: TextStyle(
                                                                      color: Colors.grey,
                                                                      //  fontWeight: FontWeight.bold,
                                                                      fontSize: 10)),
                                                            ),
                                                            Container(
                                                              padding:
                                                                  EdgeInsets
                                                                      .fromLTRB(
                                                                          13,
                                                                          5,
                                                                          0,
                                                                          0),
                                                              child: Icon(
                                                                Icons
                                                                    .cancel_outlined,
                                                                color: Colors
                                                                    .black,
                                                                size: 15.0,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        Container(
                                                          padding: EdgeInsets
                                                              .fromLTRB(0, 00,
                                                                  240, 0),
                                                          child: Text(
                                                              'Known more',
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .black,
                                                                  decoration:
                                                                      TextDecoration
                                                                          .underline,
                                                                  //  fontWeight: FontWeight.bold,
                                                                  fontSize:
                                                                      10)),
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
                                ],
                              ),
                            );
                          },
                          // transitionBuilder:
                          //     (context, animation, secondaryAnimation, child) {
                          //   return SlideTransition(
                          //     position: CurvedAnimation(
                          //       parent: animation,
                          //       curve: Curves.easeOut,
                          //     ).drive(Tween<Offset>(
                          //       begin: Offset(0, -1.0),
                          //       end: Offset.zero,
                          //     )),
                          //     child: child,
                          //   );
                          // },
                        );
                      },
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (_) => MyApp()));
          },
          icon: Icon(Icons.keyboard_backspace),
        ),
      ),
      body: DefaultTabController(
        length: 3,
        child: Column(
          children: <Widget>[
            Container(
              constraints: BoxConstraints.expand(height: 40),
              child: TabBar(tabs: [
                Tab(
                    child: new Text(
                  'Contests',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                )),
                Tab(
                    child: new Text(
                  'My Contests',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                )),
                Tab(
                    child: new Text(
                  'My TEams(0)',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                )),
              ]),
            ),
            Expanded(
              child: TabBarView(children: [
                DefaultTabController(
                  length: 6,
                  child: Column(
                    children: <Widget>[
                      Container(
                        constraints: BoxConstraints.expand(
                          height: 40,
                        ),
                        child: TabBar(tabs: [
                          Tab(
                              child: Container(
                            child: new Text(
                              'Sort By:',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12),
                            ),
                          )),
                          Tab(
                              child: new Text(
                            'ENTRY',
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          )),
                          Tab(
                              child: new Text(
                            'SPOTS',
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          )),
                          Tab(
                              child: new Text(
                            'PRIZE POOL',
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          )),
                          Tab(
                              child: new Text(
                            '%WINNERS',
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          )),
                          Tab(
                            icon: Icon(
                              Icons.filter_alt_outlined,
                              color: Colors.black,
                              size: 28.0,
                            ),
                          ),
                        ]),
                      ),
                      SizedBox(
                        height: 17,
                      ),
                      Expanded(
                        child: TabBarView(children: [
                          Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    padding: EdgeInsets.fromLTRB(10, 00, 0, 0),
                                    child: Text("117 contest available",
                                        style: TextStyle(
                                            color: Colors.grey,
                                            //  fontWeight: FontWeight.bold,
                                            fontSize: 14)),
                                  ),
                                  SizedBox(
                                    width: 90,
                                  ),
                                  Container(
                                    padding: EdgeInsets.fromLTRB(0, 00, 0, 0),
                                    child: Text("1 spot applied ",
                                        style: TextStyle(
                                            color: Colors.grey,
                                            //  fontWeight: FontWeight.bold,
                                            fontSize: 14)),
                                  ),
                                  Container(
                                    padding: EdgeInsets.fromLTRB(8, 00, 0, 0),
                                    child: Text("CLEAR",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 14)),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 26,
                              ),
                              Container(
                                //new
                                width: 350,
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          padding:
                                              EdgeInsets.fromLTRB(8, 3, 0, 0),
                                          child: Text('Prize Pool',
                                              style: TextStyle(
                                                  color: Colors.grey[800],
                                                  // fontWeight: FontWeight.bold,
                                                  fontSize: 12)),
                                        ),
                                        SizedBox(
                                          width: 228,
                                        ),
                                        Container(
                                          padding:
                                              EdgeInsets.fromLTRB(8, 3, 0, 0),
                                          child: Text('Entry',
                                              style: TextStyle(
                                                  color: Colors.grey[800],
                                                  // fontWeight: FontWeight.bold,
                                                  fontSize: 12)),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          padding:
                                              EdgeInsets.fromLTRB(8, 3, 0, 0),
                                          child: Text('₹ 10 Crores',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 18)),
                                        ),
                                        SizedBox(
                                          width: 140,
                                        ),
                                        Container(
                                          padding:
                                              EdgeInsets.fromLTRB(8, 3, 0, 0),
                                          child: Text('₹59',
                                              style: TextStyle(
                                                  color:
                                                      Colors.greenAccent[400],
                                                  decoration: TextDecoration
                                                      .lineThrough,
                                                  decorationThickness: 2.85,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 13)),
                                        ),
                                        SizedBox(
                                          width: 8,
                                        ),
                                        Container(
                                          alignment: Alignment.center,
                                          width: 50,
                                          height: 20,
                                          margin: EdgeInsets.all(1),
                                          padding: EdgeInsets.all(2),
                                          child: Text(
                                            '₹4',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 13),
                                          ),
                                          decoration: BoxDecoration(
                                              color: Colors.greenAccent[400],
                                              border: Border(
                                                  bottom: BorderSide(
                                                color: Colors.greenAccent,
                                                width: 1,
                                              ))),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Column(
                                      children: [
                                        Container(
                                          child: new LinearPercentIndicator(
                                            width: 350.0,
                                            lineHeight: 10.0,
                                            percent: 0.5,
                                            backgroundColor: Colors.red[50],
                                            progressColor: Colors.red,
                                          ),
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          padding:
                                              EdgeInsets.fromLTRB(8, 3, 0, 0),
                                          child: Text('13,14,787 spots left',
                                              style: TextStyle(
                                                  color: Colors.red,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 13)),
                                        ),
                                        SizedBox(
                                          width: 130,
                                        ),
                                        Container(
                                          padding:
                                              EdgeInsets.fromLTRB(8, 3, 0, 0),
                                          child: Text('20,51,282',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  //  fontWeight: FontWeight.bold,
                                                  fontSize: 13)),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          child: Icon(
                                            Icons.monetization_on_outlined,
                                            color: Colors.black,
                                            size: 18.0,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Container(
                                          padding:
                                              EdgeInsets.fromLTRB(8, 3, 0, 0),
                                          child: Text('₹27 Lakhs',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  //  fontWeight: FontWeight.bold,
                                                  fontSize: 13)),
                                        ),
                                        SizedBox(
                                          width: 8,
                                        ),
                                        Container(
                                          child: Icon(
                                            Icons.wine_bar_outlined,
                                            color: Colors.black,
                                            size: 20.0,
                                          ),
                                        ),
                                        Container(
                                          padding:
                                              EdgeInsets.fromLTRB(0, 3, 0, 0),
                                          child: Text('62%',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  //  fontWeight: FontWeight.bold,
                                                  fontSize: 13)),
                                        ),
                                        SizedBox(
                                          width: 103,
                                        ),
                                        Container(
                                          child: Icon(
                                            Icons.offline_pin_outlined,
                                            color: Colors.black,
                                            size: 20.0,
                                          ),
                                        ),
                                        Container(
                                          padding:
                                              EdgeInsets.fromLTRB(0, 0, 0, 0),
                                          child: Text('Guaranted',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  //  fontWeight: FontWeight.bold,
                                                  fontSize: 13)),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
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
                                      offset: Offset(
                                          0, 2), // changes position of shadow
                                    ),
                                    //you can set more BoxShadow() here
                                  ],
                                ),
                                height: 150,
                              ),
                              SizedBox(
                                height: 18,
                              ),
                              Container(
                                //new
                                width: 350,
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          padding:
                                              EdgeInsets.fromLTRB(8, 3, 0, 0),
                                          child: Text('Prize Pool',
                                              style: TextStyle(
                                                  color: Colors.grey[800],
                                                  // fontWeight: FontWeight.bold,
                                                  fontSize: 12)),
                                        ),
                                        SizedBox(
                                          width: 228,
                                        ),
                                        Container(
                                          padding:
                                              EdgeInsets.fromLTRB(8, 3, 0, 0),
                                          child: Text('Entry',
                                              style: TextStyle(
                                                  color: Colors.grey[800],
                                                  // fontWeight: FontWeight.bold,
                                                  fontSize: 12)),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          padding:
                                              EdgeInsets.fromLTRB(8, 3, 0, 0),
                                          child: Text('₹ 10 Crores',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 18)),
                                        ),
                                        SizedBox(
                                          width: 140,
                                        ),
                                        Container(
                                          padding:
                                              EdgeInsets.fromLTRB(8, 3, 0, 0),
                                          child: Text('₹59',
                                              style: TextStyle(
                                                  color:
                                                      Colors.greenAccent[400],
                                                  decoration: TextDecoration
                                                      .lineThrough,
                                                  decorationThickness: 2.85,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 13)),
                                        ),
                                        SizedBox(
                                          width: 8,
                                        ),
                                        Container(
                                          alignment: Alignment.center,
                                          width: 50,
                                          height: 20,
                                          margin: EdgeInsets.all(1),
                                          padding: EdgeInsets.all(2),
                                          child: Text(
                                            '₹4',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 13),
                                          ),
                                          decoration: BoxDecoration(
                                              color: Colors.greenAccent[400],
                                              border: Border(
                                                  bottom: BorderSide(
                                                color: Colors.greenAccent,
                                                width: 1,
                                              ))),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Column(
                                      children: [
                                        Container(
                                          child: new LinearPercentIndicator(
                                            width: 350.0,
                                            lineHeight: 10.0,
                                            percent: 0.5,
                                            backgroundColor: Colors.red[50],
                                            progressColor: Colors.red,
                                          ),
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          padding:
                                              EdgeInsets.fromLTRB(8, 3, 0, 0),
                                          child: Text('13,14,787 spots left',
                                              style: TextStyle(
                                                  color: Colors.red,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 13)),
                                        ),
                                        SizedBox(
                                          width: 130,
                                        ),
                                        Container(
                                          padding:
                                              EdgeInsets.fromLTRB(8, 3, 0, 0),
                                          child: Text('20,51,282',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  //  fontWeight: FontWeight.bold,
                                                  fontSize: 13)),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          child: Icon(
                                            Icons.monetization_on_outlined,
                                            color: Colors.black,
                                            size: 18.0,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Container(
                                          padding:
                                              EdgeInsets.fromLTRB(8, 3, 0, 0),
                                          child: Text('₹27 Lakhs',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  //  fontWeight: FontWeight.bold,
                                                  fontSize: 13)),
                                        ),
                                        SizedBox(
                                          width: 8,
                                        ),
                                        Container(
                                          child: Icon(
                                            Icons.wine_bar_outlined,
                                            color: Colors.black,
                                            size: 20.0,
                                          ),
                                        ),
                                        Container(
                                          padding:
                                              EdgeInsets.fromLTRB(0, 3, 0, 0),
                                          child: Text('62%',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  //  fontWeight: FontWeight.bold,
                                                  fontSize: 13)),
                                        ),
                                        SizedBox(
                                          width: 103,
                                        ),
                                        Container(
                                          child: Icon(
                                            Icons.offline_pin_outlined,
                                            color: Colors.black,
                                            size: 20.0,
                                          ),
                                        ),
                                        Container(
                                          padding:
                                              EdgeInsets.fromLTRB(0, 0, 0, 0),
                                          child: Text('Guaranted',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  //  fontWeight: FontWeight.bold,
                                                  fontSize: 13)),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
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
                                      offset: Offset(
                                          0, 2), // changes position of shadow
                                    ),
                                    //you can set more BoxShadow() here
                                  ],
                                ),
                                height: 150,
                              ),
                              SizedBox(
                                height: 18,
                              ),
                              Container(
                                //new
                                width: 350,
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          padding:
                                              EdgeInsets.fromLTRB(8, 3, 0, 0),
                                          child: Text('Prize Pool',
                                              style: TextStyle(
                                                  color: Colors.grey[800],
                                                  // fontWeight: FontWeight.bold,
                                                  fontSize: 12)),
                                        ),
                                        SizedBox(
                                          width: 228,
                                        ),
                                        Container(
                                          padding:
                                              EdgeInsets.fromLTRB(8, 3, 0, 0),
                                          child: Text('Entry',
                                              style: TextStyle(
                                                  color: Colors.grey[800],
                                                  // fontWeight: FontWeight.bold,
                                                  fontSize: 12)),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          padding:
                                              EdgeInsets.fromLTRB(8, 3, 0, 0),
                                          child: Text('₹ 10 Crores',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 18)),
                                        ),
                                        SizedBox(
                                          width: 140,
                                        ),
                                        Container(
                                          padding:
                                              EdgeInsets.fromLTRB(8, 3, 0, 0),
                                          child: Text('₹59',
                                              style: TextStyle(
                                                  color:
                                                      Colors.greenAccent[400],
                                                  decoration: TextDecoration
                                                      .lineThrough,
                                                  decorationThickness: 2.85,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 13)),
                                        ),
                                        SizedBox(
                                          width: 8,
                                        ),
                                        Container(
                                          alignment: Alignment.center,
                                          width: 50,
                                          height: 20,
                                          margin: EdgeInsets.all(1),
                                          padding: EdgeInsets.all(2),
                                          child: Text(
                                            '₹4',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 13),
                                          ),
                                          decoration: BoxDecoration(
                                              color: Colors.greenAccent[400],
                                              border: Border(
                                                  bottom: BorderSide(
                                                color: Colors.greenAccent,
                                                width: 1,
                                              ))),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Column(
                                      children: [
                                        Container(
                                          child: new LinearPercentIndicator(
                                            width: 350.0,
                                            lineHeight: 10.0,
                                            percent: 0.5,
                                            backgroundColor: Colors.red[50],
                                            progressColor: Colors.red,
                                          ),
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          padding:
                                              EdgeInsets.fromLTRB(8, 3, 0, 0),
                                          child: Text('13,14,787 spots left',
                                              style: TextStyle(
                                                  color: Colors.red,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 13)),
                                        ),
                                        SizedBox(
                                          width: 130,
                                        ),
                                        Container(
                                          padding:
                                              EdgeInsets.fromLTRB(8, 3, 0, 0),
                                          child: Text('20,51,282',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  //  fontWeight: FontWeight.bold,
                                                  fontSize: 13)),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          child: Icon(
                                            Icons.monetization_on_outlined,
                                            color: Colors.black,
                                            size: 18.0,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Container(
                                          padding:
                                              EdgeInsets.fromLTRB(8, 3, 0, 0),
                                          child: Text('₹27 Lakhs',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  //  fontWeight: FontWeight.bold,
                                                  fontSize: 13)),
                                        ),
                                        SizedBox(
                                          width: 8,
                                        ),
                                        Container(
                                          child: Icon(
                                            Icons.wine_bar_outlined,
                                            color: Colors.black,
                                            size: 20.0,
                                          ),
                                        ),
                                        Container(
                                          padding:
                                              EdgeInsets.fromLTRB(0, 3, 0, 0),
                                          child: Text('62%',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  //  fontWeight: FontWeight.bold,
                                                  fontSize: 13)),
                                        ),
                                        SizedBox(
                                          width: 103,
                                        ),
                                        Container(
                                          child: Icon(
                                            Icons.offline_pin_outlined,
                                            color: Colors.black,
                                            size: 20.0,
                                          ),
                                        ),
                                        Container(
                                          padding:
                                              EdgeInsets.fromLTRB(0, 0, 0, 0),
                                          child: Text('Guaranted',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  //  fontWeight: FontWeight.bold,
                                                  fontSize: 13)),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
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
                                      offset: Offset(
                                          0, 2), // changes position of shadow
                                    ),
                                    //you can set more BoxShadow() here
                                  ],
                                ),
                                height: 150,
                              ),
                              SizedBox(
                                height: 18,
                              ),
                            ],
                          ),
                          //ENTRY
                          Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    padding: EdgeInsets.fromLTRB(10, 00, 0, 0),
                                    child: Text("117 contest available",
                                        style: TextStyle(
                                            color: Colors.grey,
                                            //  fontWeight: FontWeight.bold,
                                            fontSize: 14)),
                                  ),
                                  SizedBox(
                                    width: 90,
                                  ),
                                  Container(
                                    padding: EdgeInsets.fromLTRB(0, 00, 0, 0),
                                    child: Text("1 spot applied ",
                                        style: TextStyle(
                                            color: Colors.grey,
                                            //  fontWeight: FontWeight.bold,
                                            fontSize: 14)),
                                  ),
                                  Container(
                                    padding: EdgeInsets.fromLTRB(8, 00, 0, 0),
                                    child: Text("CLEAR",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 14)),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 26,
                              ),
                              Container(
                                //new
                                width: 350,
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        SizedBox(
                                          height: 40,
                                        ),
                                        Container(
                                          padding:
                                              EdgeInsets.fromLTRB(8, 3, 0, 0),
                                          child: Text('Practice Context',
                                              style: TextStyle(
                                                  color: Colors.black87,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 12)),
                                        ),
                                        SizedBox(
                                          width: 190,
                                        ),
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
                                      height: 10,
                                    ),
                                    Column(
                                      children: [
                                        Container(
                                          child: new LinearPercentIndicator(
                                            width: 350.0,
                                            lineHeight: 10.0,
                                            percent: 0.5,
                                            backgroundColor: Colors.red[50],
                                            progressColor: Colors.red,
                                          ),
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          padding:
                                              EdgeInsets.fromLTRB(8, 3, 0, 0),
                                          child: Text('13,14,787 spots left',
                                              style: TextStyle(
                                                  color: Colors.red,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 13)),
                                        ),
                                        SizedBox(
                                          width: 108,
                                        ),
                                        Container(
                                          padding:
                                              EdgeInsets.fromLTRB(8, 3, 0, 0),
                                          child: Text('10,000',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  //  fontWeight: FontWeight.bold,
                                                  fontSize: 13)),
                                        ),
                                        Container(
                                          padding:
                                              EdgeInsets.fromLTRB(8, 3, 0, 0),
                                          child: Text('spots',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  //  fontWeight: FontWeight.bold,
                                                  fontSize: 13)),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          padding:
                                              EdgeInsets.fromLTRB(8, 0, 0, 0),
                                          child: Icon(
                                            Icons.monetization_on_outlined,
                                            color: Colors.black,
                                            size: 18.0,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Container(
                                          padding:
                                              EdgeInsets.fromLTRB(8, 3, 0, 0),
                                          child: Text('Glory awaits!',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  //  fontWeight: FontWeight.bold,
                                                  fontSize: 13)),
                                        ),
                                        SizedBox(
                                          width: 8,
                                        ),
                                        Container(
                                          child: Icon(
                                            Icons.wine_bar_outlined,
                                            color: Colors.black,
                                            size: 20.0,
                                          ),
                                        ),
                                        Container(
                                          padding:
                                              EdgeInsets.fromLTRB(0, 3, 0, 0),
                                          child: Text('Single',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  //  fontWeight: FontWeight.bold,
                                                  fontSize: 13)),
                                        ),
                                        SizedBox(
                                          width: 70,
                                        ),
                                        Container(
                                          child: Icon(
                                            Icons.offline_pin_outlined,
                                            color: Colors.black,
                                            size: 20.0,
                                          ),
                                        ),
                                        Container(
                                          padding:
                                              EdgeInsets.fromLTRB(0, 0, 0, 0),
                                          child: Text('Guaranted',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  //  fontWeight: FontWeight.bold,
                                                  fontSize: 13)),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
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
                                      offset: Offset(
                                          0, 2), // changes position of shadow
                                    ),
                                    //you can set more BoxShadow() here
                                  ],
                                ),
                                height: 140,
                              ),
                              SizedBox(
                                height: 18,
                              ),
                              Container(
                                //new
                                width: 350,
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        SizedBox(
                                          height: 40,
                                        ),
                                        Container(
                                          padding:
                                              EdgeInsets.fromLTRB(8, 3, 0, 0),
                                          child: Text('Practice Context',
                                              style: TextStyle(
                                                  color: Colors.black87,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 12)),
                                        ),
                                        SizedBox(
                                          width: 190,
                                        ),
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
                                      height: 10,
                                    ),
                                    Column(
                                      children: [
                                        Container(
                                          child: new LinearPercentIndicator(
                                            width: 350.0,
                                            lineHeight: 10.0,
                                            percent: 0.5,
                                            backgroundColor: Colors.red[50],
                                            progressColor: Colors.red,
                                          ),
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          padding:
                                              EdgeInsets.fromLTRB(8, 3, 0, 0),
                                          child: Text('13,14,787 spots left',
                                              style: TextStyle(
                                                  color: Colors.red,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 13)),
                                        ),
                                        SizedBox(
                                          width: 108,
                                        ),
                                        Container(
                                          padding:
                                              EdgeInsets.fromLTRB(8, 3, 0, 0),
                                          child: Text('10,000',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  //  fontWeight: FontWeight.bold,
                                                  fontSize: 13)),
                                        ),
                                        Container(
                                          padding:
                                              EdgeInsets.fromLTRB(8, 3, 0, 0),
                                          child: Text('spots',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  //  fontWeight: FontWeight.bold,
                                                  fontSize: 13)),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          padding:
                                              EdgeInsets.fromLTRB(8, 0, 0, 0),
                                          child: Icon(
                                            Icons.monetization_on_outlined,
                                            color: Colors.black,
                                            size: 18.0,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Container(
                                          padding:
                                              EdgeInsets.fromLTRB(8, 3, 0, 0),
                                          child: Text('Glory awaits!',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  //  fontWeight: FontWeight.bold,
                                                  fontSize: 13)),
                                        ),
                                        SizedBox(
                                          width: 8,
                                        ),
                                        Container(
                                          child: Icon(
                                            Icons.wine_bar_outlined,
                                            color: Colors.black,
                                            size: 20.0,
                                          ),
                                        ),
                                        Container(
                                          padding:
                                              EdgeInsets.fromLTRB(0, 3, 0, 0),
                                          child: Text('Single',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  //  fontWeight: FontWeight.bold,
                                                  fontSize: 13)),
                                        ),
                                        SizedBox(
                                          width: 70,
                                        ),
                                        Container(
                                          child: Icon(
                                            Icons.offline_pin_outlined,
                                            color: Colors.black,
                                            size: 20.0,
                                          ),
                                        ),
                                        Container(
                                          padding:
                                              EdgeInsets.fromLTRB(0, 0, 0, 0),
                                          child: Text('Guaranted',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  //  fontWeight: FontWeight.bold,
                                                  fontSize: 13)),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
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
                                      offset: Offset(
                                          0, 2), // changes position of shadow
                                    ),
                                    //you can set more BoxShadow() here
                                  ],
                                ),
                                height: 140,
                              ),
                            ],
                          ),
//spots
                          Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    padding: EdgeInsets.fromLTRB(10, 00, 0, 0),
                                    child: Text("117 contest available",
                                        style: TextStyle(
                                            color: Colors.grey,
                                            //  fontWeight: FontWeight.bold,
                                            fontSize: 14)),
                                  ),
                                  SizedBox(
                                    width: 90,
                                  ),
                                  Container(
                                    padding: EdgeInsets.fromLTRB(0, 00, 0, 0),
                                    child: Text("1 spot applied ",
                                        style: TextStyle(
                                            color: Colors.grey,
                                            //  fontWeight: FontWeight.bold,
                                            fontSize: 14)),
                                  ),
                                  Container(
                                    padding: EdgeInsets.fromLTRB(8, 00, 0, 0),
                                    child: Text("CLEAR",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 14)),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 26,
                              ),
                              Container(
                                //new
                                width: 350,
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          padding:
                                              EdgeInsets.fromLTRB(8, 3, 0, 0),
                                          child: Text('Prize Pool',
                                              style: TextStyle(
                                                  color: Colors.grey[800],
                                                  // fontWeight: FontWeight.bold,
                                                  fontSize: 12)),
                                        ),
                                        SizedBox(
                                          width: 228,
                                        ),
                                        Container(
                                          padding:
                                              EdgeInsets.fromLTRB(8, 3, 0, 0),
                                          child: Text('Entry',
                                              style: TextStyle(
                                                  color: Colors.grey[800],
                                                  // fontWeight: FontWeight.bold,
                                                  fontSize: 12)),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          padding:
                                              EdgeInsets.fromLTRB(8, 3, 0, 0),
                                          child: Text('₹ 10 Crores',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 18)),
                                        ),
                                        SizedBox(
                                          width: 140,
                                        ),
                                        Container(
                                          padding:
                                              EdgeInsets.fromLTRB(8, 3, 0, 0),
                                          child: Text('₹59',
                                              style: TextStyle(
                                                  color:
                                                      Colors.greenAccent[400],
                                                  decoration: TextDecoration
                                                      .lineThrough,
                                                  decorationThickness: 2.85,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 13)),
                                        ),
                                        SizedBox(
                                          width: 8,
                                        ),
                                        Container(
                                          alignment: Alignment.center,
                                          width: 50,
                                          height: 20,
                                          margin: EdgeInsets.all(1),
                                          padding: EdgeInsets.all(2),
                                          child: Text(
                                            '₹4',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 13),
                                          ),
                                          decoration: BoxDecoration(
                                              color: Colors.greenAccent[400],
                                              border: Border(
                                                  bottom: BorderSide(
                                                color: Colors.greenAccent,
                                                width: 1,
                                              ))),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Column(
                                      children: [
                                        Container(
                                          child: new LinearPercentIndicator(
                                            width: 350.0,
                                            lineHeight: 10.0,
                                            percent: 0.5,
                                            backgroundColor: Colors.red[50],
                                            progressColor: Colors.red,
                                          ),
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          padding:
                                              EdgeInsets.fromLTRB(8, 3, 0, 0),
                                          child: Text('13,14,787 spots left',
                                              style: TextStyle(
                                                  color: Colors.red,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 13)),
                                        ),
                                        SizedBox(
                                          width: 130,
                                        ),
                                        Container(
                                          padding:
                                              EdgeInsets.fromLTRB(8, 3, 0, 0),
                                          child: Text('20,51,282',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  //  fontWeight: FontWeight.bold,
                                                  fontSize: 13)),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          child: Icon(
                                            Icons.monetization_on_outlined,
                                            color: Colors.black,
                                            size: 18.0,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Container(
                                          padding:
                                              EdgeInsets.fromLTRB(8, 3, 0, 0),
                                          child: Text('₹27 Lakhs',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  //  fontWeight: FontWeight.bold,
                                                  fontSize: 13)),
                                        ),
                                        SizedBox(
                                          width: 8,
                                        ),
                                        Container(
                                          child: Icon(
                                            Icons.wine_bar_outlined,
                                            color: Colors.black,
                                            size: 20.0,
                                          ),
                                        ),
                                        Container(
                                          padding:
                                              EdgeInsets.fromLTRB(0, 3, 0, 0),
                                          child: Text('62%',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  //  fontWeight: FontWeight.bold,
                                                  fontSize: 13)),
                                        ),
                                        SizedBox(
                                          width: 103,
                                        ),
                                        Container(
                                          child: Icon(
                                            Icons.offline_pin_outlined,
                                            color: Colors.black,
                                            size: 20.0,
                                          ),
                                        ),
                                        Container(
                                          padding:
                                              EdgeInsets.fromLTRB(0, 0, 0, 0),
                                          child: Text('Guaranted',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  //  fontWeight: FontWeight.bold,
                                                  fontSize: 13)),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
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
                                      offset: Offset(
                                          0, 2), // changes position of shadow
                                    ),
                                    //you can set more BoxShadow() here
                                  ],
                                ),
                                height: 150,
                              ),
                              SizedBox(
                                height: 18,
                              ),
                              Container(
                                //new
                                width: 350,
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          padding:
                                              EdgeInsets.fromLTRB(8, 3, 0, 0),
                                          child: Text('Prize Pool',
                                              style: TextStyle(
                                                  color: Colors.grey[800],
                                                  // fontWeight: FontWeight.bold,
                                                  fontSize: 12)),
                                        ),
                                        SizedBox(
                                          width: 228,
                                        ),
                                        Container(
                                          padding:
                                              EdgeInsets.fromLTRB(8, 3, 0, 0),
                                          child: Text('Entry',
                                              style: TextStyle(
                                                  color: Colors.grey[800],
                                                  // fontWeight: FontWeight.bold,
                                                  fontSize: 12)),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          padding:
                                              EdgeInsets.fromLTRB(8, 3, 0, 0),
                                          child: Text('₹ 10 Crores',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 18)),
                                        ),
                                        SizedBox(
                                          width: 140,
                                        ),
                                        Container(
                                          padding:
                                              EdgeInsets.fromLTRB(8, 3, 0, 0),
                                          child: Text('₹59',
                                              style: TextStyle(
                                                  color:
                                                      Colors.greenAccent[400],
                                                  decoration: TextDecoration
                                                      .lineThrough,
                                                  decorationThickness: 2.85,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 13)),
                                        ),
                                        SizedBox(
                                          width: 8,
                                        ),
                                        Container(
                                          alignment: Alignment.center,
                                          width: 50,
                                          height: 20,
                                          margin: EdgeInsets.all(1),
                                          padding: EdgeInsets.all(2),
                                          child: Text(
                                            '₹4',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 13),
                                          ),
                                          decoration: BoxDecoration(
                                              color: Colors.greenAccent[400],
                                              border: Border(
                                                  bottom: BorderSide(
                                                color: Colors.greenAccent,
                                                width: 1,
                                              ))),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Column(
                                      children: [
                                        Container(
                                          child: new LinearPercentIndicator(
                                            width: 350.0,
                                            lineHeight: 10.0,
                                            percent: 0.5,
                                            backgroundColor: Colors.red[50],
                                            progressColor: Colors.red,
                                          ),
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          padding:
                                              EdgeInsets.fromLTRB(8, 3, 0, 0),
                                          child: Text('13,14,787 spots left',
                                              style: TextStyle(
                                                  color: Colors.red,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 13)),
                                        ),
                                        SizedBox(
                                          width: 130,
                                        ),
                                        Container(
                                          padding:
                                              EdgeInsets.fromLTRB(8, 3, 0, 0),
                                          child: Text('20,51,282',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  //  fontWeight: FontWeight.bold,
                                                  fontSize: 13)),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          child: Icon(
                                            Icons.monetization_on_outlined,
                                            color: Colors.black,
                                            size: 18.0,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Container(
                                          padding:
                                              EdgeInsets.fromLTRB(8, 3, 0, 0),
                                          child: Text('₹27 Lakhs',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  //  fontWeight: FontWeight.bold,
                                                  fontSize: 13)),
                                        ),
                                        SizedBox(
                                          width: 8,
                                        ),
                                        Container(
                                          child: Icon(
                                            Icons.wine_bar_outlined,
                                            color: Colors.black,
                                            size: 20.0,
                                          ),
                                        ),
                                        Container(
                                          padding:
                                              EdgeInsets.fromLTRB(0, 3, 0, 0),
                                          child: Text('62%',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  //  fontWeight: FontWeight.bold,
                                                  fontSize: 13)),
                                        ),
                                        SizedBox(
                                          width: 103,
                                        ),
                                        Container(
                                          child: Icon(
                                            Icons.offline_pin_outlined,
                                            color: Colors.black,
                                            size: 20.0,
                                          ),
                                        ),
                                        Container(
                                          padding:
                                              EdgeInsets.fromLTRB(0, 0, 0, 0),
                                          child: Text('Guaranted',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  //  fontWeight: FontWeight.bold,
                                                  fontSize: 13)),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
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
                                      offset: Offset(
                                          0, 2), // changes position of shadow
                                    ),
                                    //you can set more BoxShadow() here
                                  ],
                                ),
                                height: 150,
                              ),
                              SizedBox(
                                height: 18,
                              ),
                            ],
                          ),
//prize
                          Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    padding: EdgeInsets.fromLTRB(10, 00, 0, 0),
                                    child: Text("117 contest available",
                                        style: TextStyle(
                                            color: Colors.grey,
                                            //  fontWeight: FontWeight.bold,
                                            fontSize: 14)),
                                  ),
                                  SizedBox(
                                    width: 90,
                                  ),
                                  Container(
                                    padding: EdgeInsets.fromLTRB(0, 00, 0, 0),
                                    child: Text("1 spot applied ",
                                        style: TextStyle(
                                            color: Colors.grey,
                                            //  fontWeight: FontWeight.bold,
                                            fontSize: 14)),
                                  ),
                                  Container(
                                    padding: EdgeInsets.fromLTRB(8, 00, 0, 0),
                                    child: Text("CLEAR",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 14)),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 26,
                              ),
                              Container(
                                //new
                                width: 350,
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          padding:
                                              EdgeInsets.fromLTRB(8, 3, 0, 0),
                                          child: Text('Prize Pool',
                                              style: TextStyle(
                                                  color: Colors.grey[800],
                                                  // fontWeight: FontWeight.bold,
                                                  fontSize: 12)),
                                        ),
                                        SizedBox(
                                          width: 228,
                                        ),
                                        Container(
                                          padding:
                                              EdgeInsets.fromLTRB(8, 3, 0, 0),
                                          child: Text('Entry',
                                              style: TextStyle(
                                                  color: Colors.grey[800],
                                                  // fontWeight: FontWeight.bold,
                                                  fontSize: 12)),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          padding:
                                              EdgeInsets.fromLTRB(8, 3, 0, 0),
                                          child: Text('₹ 10 Crores',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 18)),
                                        ),
                                        SizedBox(
                                          width: 140,
                                        ),
                                        Container(
                                          padding:
                                              EdgeInsets.fromLTRB(8, 3, 0, 0),
                                          child: Text('₹59',
                                              style: TextStyle(
                                                  color:
                                                      Colors.greenAccent[400],
                                                  decoration: TextDecoration
                                                      .lineThrough,
                                                  decorationThickness: 2.85,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 13)),
                                        ),
                                        SizedBox(
                                          width: 8,
                                        ),
                                        Container(
                                          alignment: Alignment.center,
                                          width: 50,
                                          height: 20,
                                          margin: EdgeInsets.all(1),
                                          padding: EdgeInsets.all(2),
                                          child: Text(
                                            '₹4',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 13),
                                          ),
                                          decoration: BoxDecoration(
                                              color: Colors.greenAccent[400],
                                              border: Border(
                                                  bottom: BorderSide(
                                                color: Colors.greenAccent,
                                                width: 1,
                                              ))),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Column(
                                      children: [
                                        Container(
                                          child: new LinearPercentIndicator(
                                            width: 350.0,
                                            lineHeight: 10.0,
                                            percent: 0.5,
                                            backgroundColor: Colors.red[50],
                                            progressColor: Colors.red,
                                          ),
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          padding:
                                              EdgeInsets.fromLTRB(8, 3, 0, 0),
                                          child: Text('13,14,787 spots left',
                                              style: TextStyle(
                                                  color: Colors.red,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 13)),
                                        ),
                                        SizedBox(
                                          width: 130,
                                        ),
                                        Container(
                                          padding:
                                              EdgeInsets.fromLTRB(8, 3, 0, 0),
                                          child: Text('20,51,282',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  //  fontWeight: FontWeight.bold,
                                                  fontSize: 13)),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          child: Icon(
                                            Icons.monetization_on_outlined,
                                            color: Colors.black,
                                            size: 18.0,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Container(
                                          padding:
                                              EdgeInsets.fromLTRB(8, 3, 0, 0),
                                          child: Text('₹27 Lakhs',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  //  fontWeight: FontWeight.bold,
                                                  fontSize: 13)),
                                        ),
                                        SizedBox(
                                          width: 8,
                                        ),
                                        Container(
                                          child: Icon(
                                            Icons.wine_bar_outlined,
                                            color: Colors.black,
                                            size: 20.0,
                                          ),
                                        ),
                                        Container(
                                          padding:
                                              EdgeInsets.fromLTRB(0, 3, 0, 0),
                                          child: Text('62%',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  //  fontWeight: FontWeight.bold,
                                                  fontSize: 13)),
                                        ),
                                        SizedBox(
                                          width: 103,
                                        ),
                                        Container(
                                          child: Icon(
                                            Icons.offline_pin_outlined,
                                            color: Colors.black,
                                            size: 20.0,
                                          ),
                                        ),
                                        Container(
                                          padding:
                                              EdgeInsets.fromLTRB(0, 0, 0, 0),
                                          child: Text('Guaranted',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  //  fontWeight: FontWeight.bold,
                                                  fontSize: 13)),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
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
                                      offset: Offset(
                                          0, 2), // changes position of shadow
                                    ),
                                    //you can set more BoxShadow() here
                                  ],
                                ),
                                height: 150,
                              ),
                              SizedBox(
                                height: 18,
                              ),
                              Container(
                                //new
                                width: 350,
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          padding:
                                              EdgeInsets.fromLTRB(8, 3, 0, 0),
                                          child: Text('Prize Pool',
                                              style: TextStyle(
                                                  color: Colors.grey[800],
                                                  // fontWeight: FontWeight.bold,
                                                  fontSize: 12)),
                                        ),
                                        SizedBox(
                                          width: 228,
                                        ),
                                        Container(
                                          padding:
                                              EdgeInsets.fromLTRB(8, 3, 0, 0),
                                          child: Text('Entry',
                                              style: TextStyle(
                                                  color: Colors.grey[800],
                                                  // fontWeight: FontWeight.bold,
                                                  fontSize: 12)),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          padding:
                                              EdgeInsets.fromLTRB(8, 3, 0, 0),
                                          child: Text('₹ 10 Crores',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 18)),
                                        ),
                                        SizedBox(
                                          width: 140,
                                        ),
                                        Container(
                                          padding:
                                              EdgeInsets.fromLTRB(8, 3, 0, 0),
                                          child: Text('₹59',
                                              style: TextStyle(
                                                  color:
                                                      Colors.greenAccent[400],
                                                  decoration: TextDecoration
                                                      .lineThrough,
                                                  decorationThickness: 2.85,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 13)),
                                        ),
                                        SizedBox(
                                          width: 8,
                                        ),
                                        Container(
                                          alignment: Alignment.center,
                                          width: 50,
                                          height: 20,
                                          margin: EdgeInsets.all(1),
                                          padding: EdgeInsets.all(2),
                                          child: Text(
                                            '₹4',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 13),
                                          ),
                                          decoration: BoxDecoration(
                                              color: Colors.greenAccent[400],
                                              border: Border(
                                                  bottom: BorderSide(
                                                color: Colors.greenAccent,
                                                width: 1,
                                              ))),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Column(
                                      children: [
                                        Container(
                                          child: new LinearPercentIndicator(
                                            width: 350.0,
                                            lineHeight: 10.0,
                                            percent: 0.5,
                                            backgroundColor: Colors.red[50],
                                            progressColor: Colors.red,
                                          ),
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          padding:
                                              EdgeInsets.fromLTRB(8, 3, 0, 0),
                                          child: Text('13,14,787 spots left',
                                              style: TextStyle(
                                                  color: Colors.red,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 13)),
                                        ),
                                        SizedBox(
                                          width: 130,
                                        ),
                                        Container(
                                          padding:
                                              EdgeInsets.fromLTRB(8, 3, 0, 0),
                                          child: Text('20,51,282',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  //  fontWeight: FontWeight.bold,
                                                  fontSize: 13)),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          child: Icon(
                                            Icons.monetization_on_outlined,
                                            color: Colors.black,
                                            size: 18.0,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Container(
                                          padding:
                                              EdgeInsets.fromLTRB(8, 3, 0, 0),
                                          child: Text('₹27 Lakhs',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  //  fontWeight: FontWeight.bold,
                                                  fontSize: 13)),
                                        ),
                                        SizedBox(
                                          width: 8,
                                        ),
                                        Container(
                                          child: Icon(
                                            Icons.wine_bar_outlined,
                                            color: Colors.black,
                                            size: 20.0,
                                          ),
                                        ),
                                        Container(
                                          padding:
                                              EdgeInsets.fromLTRB(0, 3, 0, 0),
                                          child: Text('62%',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  //  fontWeight: FontWeight.bold,
                                                  fontSize: 13)),
                                        ),
                                        SizedBox(
                                          width: 103,
                                        ),
                                        Container(
                                          child: Icon(
                                            Icons.offline_pin_outlined,
                                            color: Colors.black,
                                            size: 20.0,
                                          ),
                                        ),
                                        Container(
                                          padding:
                                              EdgeInsets.fromLTRB(0, 0, 0, 0),
                                          child: Text('Guaranted',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  //  fontWeight: FontWeight.bold,
                                                  fontSize: 13)),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
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
                                      offset: Offset(
                                          0, 2), // changes position of shadow
                                    ),
                                    //you can set more BoxShadow() here
                                  ],
                                ),
                                height: 150,
                              ),
                              SizedBox(
                                height: 18,
                              ),
                            ],
                          ),
                          //%winer
                          Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    padding: EdgeInsets.fromLTRB(10, 00, 0, 0),
                                    child: Text("117 contest available",
                                        style: TextStyle(
                                            color: Colors.grey,
                                            //  fontWeight: FontWeight.bold,
                                            fontSize: 14)),
                                  ),
                                  SizedBox(
                                    width: 90,
                                  ),
                                  Container(
                                    padding: EdgeInsets.fromLTRB(0, 00, 0, 0),
                                    child: Text("1 spot applied ",
                                        style: TextStyle(
                                            color: Colors.grey,
                                            //  fontWeight: FontWeight.bold,
                                            fontSize: 14)),
                                  ),
                                  Container(
                                    padding: EdgeInsets.fromLTRB(8, 00, 0, 0),
                                    child: Text("CLEAR",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 14)),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 26,
                              ),
                              Container(
                                //new
                                width: 350,
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        SizedBox(
                                          height: 40,
                                        ),
                                        Container(
                                          padding:
                                              EdgeInsets.fromLTRB(8, 3, 0, 0),
                                          child: Text('Practice Context',
                                              style: TextStyle(
                                                  color: Colors.black87,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 12)),
                                        ),
                                        SizedBox(
                                          width: 190,
                                        ),
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
                                      height: 10,
                                    ),
                                    Column(
                                      children: [
                                        Container(
                                          child: new LinearPercentIndicator(
                                            width: 350.0,
                                            lineHeight: 10.0,
                                            percent: 0.5,
                                            backgroundColor: Colors.red[50],
                                            progressColor: Colors.red,
                                          ),
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          padding:
                                              EdgeInsets.fromLTRB(8, 3, 0, 0),
                                          child: Text('13,14,787 spots left',
                                              style: TextStyle(
                                                  color: Colors.red,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 13)),
                                        ),
                                        SizedBox(
                                          width: 108,
                                        ),
                                        Container(
                                          padding:
                                              EdgeInsets.fromLTRB(8, 3, 0, 0),
                                          child: Text('10,000',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  //  fontWeight: FontWeight.bold,
                                                  fontSize: 13)),
                                        ),
                                        Container(
                                          padding:
                                              EdgeInsets.fromLTRB(8, 3, 0, 0),
                                          child: Text('spots',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  //  fontWeight: FontWeight.bold,
                                                  fontSize: 13)),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          padding:
                                              EdgeInsets.fromLTRB(8, 0, 0, 0),
                                          child: Icon(
                                            Icons.monetization_on_outlined,
                                            color: Colors.black,
                                            size: 18.0,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Container(
                                          padding:
                                              EdgeInsets.fromLTRB(8, 3, 0, 0),
                                          child: Text('Glory awaits!',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  //  fontWeight: FontWeight.bold,
                                                  fontSize: 13)),
                                        ),
                                        SizedBox(
                                          width: 8,
                                        ),
                                        Container(
                                          child: Icon(
                                            Icons.wine_bar_outlined,
                                            color: Colors.black,
                                            size: 20.0,
                                          ),
                                        ),
                                        Container(
                                          padding:
                                              EdgeInsets.fromLTRB(0, 3, 0, 0),
                                          child: Text('Single',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  //  fontWeight: FontWeight.bold,
                                                  fontSize: 13)),
                                        ),
                                        SizedBox(
                                          width: 70,
                                        ),
                                        Container(
                                          child: Icon(
                                            Icons.offline_pin_outlined,
                                            color: Colors.black,
                                            size: 20.0,
                                          ),
                                        ),
                                        Container(
                                          padding:
                                              EdgeInsets.fromLTRB(0, 0, 0, 0),
                                          child: Text('Guaranted',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  //  fontWeight: FontWeight.bold,
                                                  fontSize: 13)),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
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
                                      offset: Offset(
                                          0, 2), // changes position of shadow
                                    ),
                                    //you can set more BoxShadow() here
                                  ],
                                ),
                                height: 140,
                              ),
                              SizedBox(
                                height: 18,
                              ),
                              Container(
                                //new
                                width: 350,
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        SizedBox(
                                          height: 40,
                                        ),
                                        Container(
                                          padding:
                                              EdgeInsets.fromLTRB(8, 3, 0, 0),
                                          child: Text('Practice Context',
                                              style: TextStyle(
                                                  color: Colors.black87,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 12)),
                                        ),
                                        SizedBox(
                                          width: 190,
                                        ),
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
                                      height: 10,
                                    ),
                                    Column(
                                      children: [
                                        Container(
                                          child: new LinearPercentIndicator(
                                            width: 350.0,
                                            lineHeight: 10.0,
                                            percent: 0.5,
                                            backgroundColor: Colors.red[50],
                                            progressColor: Colors.red,
                                          ),
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          padding:
                                              EdgeInsets.fromLTRB(8, 3, 0, 0),
                                          child: Text('13,14,787 spots left',
                                              style: TextStyle(
                                                  color: Colors.red,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 13)),
                                        ),
                                        SizedBox(
                                          width: 108,
                                        ),
                                        Container(
                                          padding:
                                              EdgeInsets.fromLTRB(8, 3, 0, 0),
                                          child: Text('10,000',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  //  fontWeight: FontWeight.bold,
                                                  fontSize: 13)),
                                        ),
                                        Container(
                                          padding:
                                              EdgeInsets.fromLTRB(8, 3, 0, 0),
                                          child: Text('spots',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  //  fontWeight: FontWeight.bold,
                                                  fontSize: 13)),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          padding:
                                              EdgeInsets.fromLTRB(8, 0, 0, 0),
                                          child: Icon(
                                            Icons.monetization_on_outlined,
                                            color: Colors.black,
                                            size: 18.0,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Container(
                                          padding:
                                              EdgeInsets.fromLTRB(8, 3, 0, 0),
                                          child: Text('Glory awaits!',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  //  fontWeight: FontWeight.bold,
                                                  fontSize: 13)),
                                        ),
                                        SizedBox(
                                          width: 8,
                                        ),
                                        Container(
                                          child: Icon(
                                            Icons.wine_bar_outlined,
                                            color: Colors.black,
                                            size: 20.0,
                                          ),
                                        ),
                                        Container(
                                          padding:
                                              EdgeInsets.fromLTRB(0, 3, 0, 0),
                                          child: Text('Single',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  //  fontWeight: FontWeight.bold,
                                                  fontSize: 13)),
                                        ),
                                        SizedBox(
                                          width: 70,
                                        ),
                                        Container(
                                          child: Icon(
                                            Icons.offline_pin_outlined,
                                            color: Colors.black,
                                            size: 20.0,
                                          ),
                                        ),
                                        Container(
                                          padding:
                                              EdgeInsets.fromLTRB(0, 0, 0, 0),
                                          child: Text('Guaranted',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  //  fontWeight: FontWeight.bold,
                                                  fontSize: 13)),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
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
                                      offset: Offset(
                                          0, 2), // changes position of shadow
                                    ),
                                    //you can set more BoxShadow() here
                                  ],
                                ),
                                height: 140,
                              ),
                            ],
                          ),
                          // filer

                          Container(
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    SizedBox(
                                      width: 160,
                                    ),
                                    Container(
                                      padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                      child: Text('Filter',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20)),
                                    ),
                                    SizedBox(
                                      width: 110,
                                    ),
                                    Container(
                                      padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                      child: Text('CLEAR',
                                          style: TextStyle(
                                              color: Colors.grey,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20)),
                                    ),
                                  ],
                                ),
                                Divider(
                                  color: Colors.black,
                                ),
                                Container(
                                  padding: EdgeInsets.fromLTRB(0, 0, 310, 0),
                                  child: Text('ENTERY',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18)),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Container(
                                  padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                                  child: Column(
                                    children: [
                                      Row(
                                        children: <Widget>[
                                          Container(
                                            padding: const EdgeInsets.all(8.0),
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(22),
                                              border: Border.all(
                                                width: 1,
                                              ),
                                            ),
                                            child: const Text(
                                              "₹1 -₹50",
                                              style: TextStyle(fontSize: 16.0),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Container(
                                            padding: const EdgeInsets.all(10.0),
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(22),
                                              border: Border.all(
                                                width: 1,
                                              ),
                                            ),
                                            child: const Text(
                                              "₹51 -₹1,000",
                                              style: TextStyle(fontSize: 16.0),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 0,
                                          ),
                                          Container(
                                            padding: const EdgeInsets.all(10.0),
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(22),
                                              border: Border.all(
                                                width: 1,
                                              ),
                                            ),
                                            child: const Text(
                                              "₹101 -₹1,000",
                                              style: TextStyle(fontSize: 16.0),
                                            ),
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Container(
                                        padding:
                                            EdgeInsets.fromLTRB(0, 0, 260, 0),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(22),
                                            border: Border.all(
                                              width: 1,
                                            ),
                                          ),
                                          padding: const EdgeInsets.all(10.0),
                                          child: const Text(
                                            "1,001 & above",
                                            style: TextStyle(fontSize: 16.0),
                                          ),
                                        ),
                                      ),

                                    ],
                                  ),
                                ),
                                Divider(
                                  color: Colors.black,
                                ),
                              //Numbers of Teams
                                  Container(
                                    padding: EdgeInsets.fromLTRB(0, 0, 190, 0),
                                    child: Text('Numbers of Teams',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20)),
                                  ),
                                SizedBox(
                                  height: 20,
                                ),

                                Container(
                                  padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                                  child: Column(
                                    children: [
                                      Row(
                                        children: <Widget>[
                                          Container(
                                            padding: const EdgeInsets.all(8.0),
                                            decoration: BoxDecoration(
                                              borderRadius:
                                              BorderRadius.circular(35),
                                              border: Border.all(
                                                width: 1,
                                              ),
                                            ),
                                            child: const Text(
                                              "2",
                                              style: TextStyle(fontSize: 16.0),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Container(
                                            padding: const EdgeInsets.all(10.0),
                                            decoration: BoxDecoration(
                                              borderRadius:
                                              BorderRadius.circular(22),
                                              border: Border.all(
                                                width: 1,
                                              ),
                                            ),
                                            child: const Text(
                                              "3 - 10",
                                              style: TextStyle(fontSize: 16.0),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Container(
                                            padding: const EdgeInsets.all(10.0),
                                            decoration: BoxDecoration(
                                              borderRadius:
                                              BorderRadius.circular(22),
                                              border: Border.all(
                                                width: 1,
                                              ),
                                            ),
                                            child: const Text(
                                              "11-100",
                                              style: TextStyle(fontSize: 16.0),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Container(
                                            padding: const EdgeInsets.all(10.0),
                                            decoration: BoxDecoration(
                                              borderRadius:
                                              BorderRadius.circular(22),
                                              border: Border.all(
                                                width: 1,
                                              ),
                                            ),
                                            child: const Text(
                                              "101-1000",
                                              style: TextStyle(fontSize: 16.0),
                                            ),
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Container(
                                        padding:
                                        EdgeInsets.fromLTRB(0, 0, 260, 0),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                            BorderRadius.circular(22),
                                            border: Border.all(
                                              width: 1,
                                            ),
                                          ),
                                          padding: const EdgeInsets.all(10.0),
                                          child: const Text(
                                            "1,001 & above",
                                            style: TextStyle(fontSize: 16.0),
                                          ),
                                        ),
                                      ),


                                    ],
                                  ),
                                ),
                                Divider(
                                  color: Colors.black,
                                ),
                                Container(
                                  padding: EdgeInsets.fromLTRB(0, 0, 260, 0),
                                  child: Text('Prize Pool',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20)),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Container(
                                  padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                                  child: Column(
                                    children: [
                                      Row(
                                        children: <Widget>[
                                          Container(
                                            padding: const EdgeInsets.all(8.0),
                                            decoration: BoxDecoration(
                                              borderRadius:
                                              BorderRadius.circular(35),
                                              border: Border.all(
                                                width: 1,
                                              ),
                                            ),
                                            child: const Text(
                                              "₹1 - ₹10,000",
                                              style: TextStyle(fontSize: 16.0),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Container(
                                            padding: const EdgeInsets.all(10.0),
                                            decoration: BoxDecoration(
                                              borderRadius:
                                              BorderRadius.circular(22),
                                              border: Border.all(
                                                width: 1,
                                              ),
                                            ),
                                            child: const Text(
                                              "₹1 - ₹10,000- ₹1 Lakh",
                                              style: TextStyle(fontSize: 16.0),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                         
                                         
                                        ],
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        children: <Widget>[
                                          Container(
                                            padding: const EdgeInsets.all(8.0),
                                            decoration: BoxDecoration(
                                              borderRadius:
                                              BorderRadius.circular(35),
                                              border: Border.all(
                                                width: 1,
                                              ),
                                            ),
                                            child: const Text(
                                              "₹1 Lakh - ₹10 Lakh",
                                              style: TextStyle(fontSize: 16.0),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Container(
                                            padding: const EdgeInsets.all(10.0),
                                            decoration: BoxDecoration(
                                              borderRadius:
                                              BorderRadius.circular(22),
                                              border: Border.all(
                                                width: 1,
                                              ),
                                            ),
                                            child: const Text(
                                              "₹10 - ₹ Lakh- ₹25 Lakh",
                                              style: TextStyle(fontSize: 16.0),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),


                                        ],
                                      ),


                                    ],
                                  ),
                                ),
                              ],
                            ),
                          )
                        ]),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Text("Articles Body"),
                ),
                Container(
                  child: Text("User Body"),
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
