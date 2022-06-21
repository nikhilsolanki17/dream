import 'package:dream/login/loginpage.dart';
import 'package:dream/main.dart';
import 'package:flutter/material.dart';

void main() => runApp(Mylevel());

class Mylevel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: levelup(),
    );
  }
}

class levelup extends StatefulWidget {
  const levelup({Key? key}) : super(key: key);

  @override
  State<levelup> createState() => _levelupState();
}

class _levelupState extends State<levelup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent[700],
        elevation: 0.0,
        title: Text("My Level"),
        leading: IconButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (_) => MyApp()));
          },
          icon: Icon(Icons.keyboard_backspace),
        ),
      ),
      body: SingleChildScrollView(
       child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [Colors.white, Colors.deepOrangeAccent],
              )),
          child: Column(
            children: [
              Container(
                height: 190,
                width: 500,
                child: Container(
                  child: Image.asset(
                    "assets/images/level.png",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                child: Container(

                  // padding: EdgeInsets.fromLTRB(0, 00, 0, 0),
                    child: Text(
                        'Your Level has now been upgraded to somthing batter!',
                        style: TextStyle(
                            color: Colors.black,
                            // fontWeight: FontWeight.bold,
                            fontSize: 13))),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                  padding: EdgeInsets.fromLTRB(0, 00, 0, 0),
                  child: Text('What has changed?',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 15))),
              Container(
                  height: 460,
                  width: 360,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(3),
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
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.fromLTRB(40, 15, 0, 0),
                            child: Icon(
                              Icons.sports_basketball,
                              color: Colors.red,
                              size: 40.0,
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.fromLTRB(50, 15, 0, 0),
                            child: Icon(
                              Icons.contactless_rounded,
                              color: Colors.red,
                              size: 60.0,
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.fromLTRB(50, 15, 0, 0),
                            child: Icon(
                              Icons.format_list_numbered_rounded,
                              color: Colors.black,
                              size: 40.0,
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(17.0),
                        child: Flexible(
                          child: RichText(
                              text: TextSpan(
                                text: 'Flaunt your skill with your ',
                                style: TextStyle(color: Colors.black, fontSize: 18),
                                children: <TextSpan>[
                                  TextSpan(
                                    text: 'Skill Score',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    children: <TextSpan>[
                                      TextSpan(
                                        text:
                                        '  which is based on your teams performance in each of the latest 25 matchs ',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              )),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(7, 10, 0, 0),
                        child:  Container(
                          padding: EdgeInsets.fromLTRB(7, 00, 0, 0),
                          child: Text('Learn more about Skill Score',
                              style: TextStyle(
                                  color: Colors.red,
                                  decoration: TextDecoration.underline,
                                  decorationStyle: TextDecorationStyle.dotted,
                                  //  fontWeight: FontWeight.bold,
                                  fontSize: 13)),
                        ),
                      ),
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.fromLTRB(40, 15, 0, 0),
                            child: Icon(
                              Icons.wine_bar_rounded,
                              color: Colors.deepOrangeAccent,
                              size: 40.0,
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.fromLTRB(50, 15, 0, 0),
                            child: Icon(
                              Icons.contactless_rounded,
                              color: Colors.red,
                              size: 60.0,
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.fromLTRB(50, 15, 0, 0),
                            child: Icon(
                              Icons.wallet_giftcard,
                              color: Colors.red,
                              size: 40.0,
                            ),
                          ),
                        ],
                      ),
                      // Padding(
                      //   padding: const EdgeInsets.all(17.0),
                      //   child: Flexible(
                      //     child: RichText(
                      //         text: TextSpan(
                      //           text: 'Join any contest to unlock your DreamRuns ',
                      //           style: TextStyle(color: Colors.black, fontSize: 18),
                      //           children: <TextSpan>[
                      //             TextSpan(
                      //               text: 'and redeem theem for exciting rewards in the Rewards in the Reward Shop every day',
                      //               style: TextStyle(
                      //                 color: Colors.black,
                      //                 fontSize: 20,
                      //                 fontWeight: FontWeight.bold,
                      //               ),
                      //               children: <TextSpan>[
                      //                 TextSpan(
                      //                   text:
                      //                   '  which is based on your teams performance in each of the latest 25 matchs ',
                      //                   style: TextStyle(
                      //                     color: Colors.black,
                      //                     fontSize: 20,
                      //                     fontWeight: FontWeight.bold,
                      //                   ),
                      //                 ),
                      //               ],
                      //             )
                      //           ],
                      //         )),
                      //   ),
                      //
                      // ),


                    ],
                  )),
            ],
          ),
        ),
      )
    );
  }
}
