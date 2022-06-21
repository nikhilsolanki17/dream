import 'package:dream/login/loginpage.dart';
import 'package:dream/main.dart';
import 'package:flutter/material.dart';

void main() => runApp(fpeople());

class fpeople extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: find(),
    );
  }
}

class find extends StatefulWidget {
  const find({Key? key}) : super(key: key);

  @override
  State<find> createState() => _findState();
}

class _findState extends State<find> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Container(
            width: double.infinity,
            height: 40,
            color: Colors.white,
            child: Center(
              child: TextField(
                decoration: InputDecoration(
                    hintText: 'Search for something',
                    prefixIcon: Icon(Icons.search),
                    suffixIcon: Icon(Icons.perm_contact_cal)),
              ),
            ),
          ),
          backgroundColor: Colors.black,
          elevation: 0.0,
          leading: IconButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => MyApp()));
            },
            icon: Icon(Icons.keyboard_backspace),
          ),
        ),
        body: Column(
          children: [
            Container(
              height: 40,
              width: 500,
              decoration: BoxDecoration(
                color: Colors.blue,
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
                    child: Text(' Find your friends who play on Dream11',
                        style: TextStyle(
                            color: Colors.white,
                            //  fontWeight: FontWeight.bold,
                            fontSize: 13)),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 35,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(0.0),
                      border: Border.all(
                        color: Colors.white,
                        width: 2.0,
                      ),
                    ),
                    padding: EdgeInsets.fromLTRB(0, 5, 0, 9),
                    child: FlatButton(
                      child: Text(
                        'Find',
                        style: TextStyle(
                          fontSize: 16.0,
                        ),
                      ),
                      // color: Colors.blue,
                      textColor: Colors.white,
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Container(
                    padding: EdgeInsets.fromLTRB(13, 12, 0, 0),
                    child: Text('Folow and Track More People',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 16))),
                SizedBox(
                  width: 70,
                ),
                Container(
                    padding: EdgeInsets.fromLTRB(13, 12, 0, 0),
                    child: Text('View All',
                        style: TextStyle(
                            color: Colors.black,
                            //fontWeight: FontWeight.bold,
                            fontSize: 16))),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            // Container(
            //   padding: const EdgeInsets.all(
            //     20.0,
            //   ),
            //   child: ListView(
            //     scrollDirection: Axis.horizontal,
            //     children: [
            //       Column(
            //         children: [
            //           Container(
            //             margin: EdgeInsets.all(10),
            //             width: 50,
            //             height: 50,
            //             child: CircleAvatar(
            //               radius: 16.0,
            //               child: ClipRRect(
            //                 child: Image.asset('assets/images/lucknowd.png'),
            //                 borderRadius: BorderRadius.circular(50.0),
            //               ),
            //             ),
            //           ),
            //           Container(
            //               child: Text('nikhil solanki',
            //                   style: TextStyle(
            //                       color: Colors.black,
            //                       fontWeight: FontWeight.bold,
            //                       fontSize: 12))),
            //           SizedBox(
            //             height: 8,
            //           ),
            //           Container(
            //               child: Text('Skill Score:691',
            //                   style: TextStyle(
            //                       color: Colors.black,
            //                       fontWeight: FontWeight.bold,
            //                       fontSize: 12))),
            //           SizedBox(
            //             height: 8,
            //           ),
            //           Container(
            //               child: Text('Top Player',
            //                   style: TextStyle(
            //                       color: Colors.grey,
            //                       // fontWeight: FontWeight.bold,
            //                       fontSize: 12))),
            //           SizedBox(
            //             height: 8,
            //           ),
            //           Container(
            //
            //             height: 35,
            //             width: 100,
            //             decoration: BoxDecoration(
            //               borderRadius: BorderRadius.circular(0.0),
            //               border: Border.all(
            //                 color: Colors.green,
            //                 width: 2.0,
            //               ),
            //             ),
            //             padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
            //             child: FlatButton(
            //               child: Text(
            //                 'Follow',
            //                 style: TextStyle(
            //                   fontSize: 16.0,
            //                 ),
            //               ),
            //               color: Colors.green,
            //               textColor: Colors.white,
            //               onPressed: () {},
            //             ),
            //           ),
            //         ],
            //       ),
            //     ],
            //   ),
            // )
            SingleChildScrollView(
                padding: const EdgeInsets.all(30.0),
                scrollDirection: Axis.horizontal,
                child: Row(children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      //border corner radius
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          //color of shadow
                          spreadRadius: 3,
                          //spread radius
                          blurRadius: 4,
                          // blur radius
                          offset: Offset(0, 2), // changes position of shadow
                        ),
                        //you can set more BoxShadow() here
                      ],
                    ),
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.all(10),
                          width: 140,
                          height: 100,
                          child: CircleAvatar(
                            radius: 16.0,
                            child: ClipRRect(
                              child: Image.asset('assets/images/lucknowd.png'),
                              borderRadius: BorderRadius.circular(50.0),
                            ),
                          ),
                        ),
                        Container(
                            child: Text('nikhil solanki',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12))),
                        SizedBox(
                          height: 8,
                        ),
                        Container(
                            child: Text('Skill Score:691',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12))),
                        SizedBox(
                          height: 8,
                        ),
                        Container(
                            child: Text('Top Player',
                                style: TextStyle(
                                    color: Colors.grey,
                                    // fontWeight: FontWeight.bold,
                                    fontSize: 12))),
                        SizedBox(
                          height: 8,
                        ),
                        Container(
                          height: 35,
                          width: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(0.0),
                            border: Border.all(
                              color: Colors.green,
                              width: 2.0,
                            ),
                          ),
                          padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                          child: FlatButton(
                            child: Text(
                              'Follow',
                              style: TextStyle(
                                fontSize: 16.0,
                              ),
                            ),
                            color: Colors.green,
                            textColor: Colors.white,
                            onPressed: () {},
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      //border corner radius
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          //color of shadow
                          spreadRadius: 3,
                          //spread radius
                          blurRadius: 4,
                          // blur radius
                          offset: Offset(0, 2), // changes position of shadow
                        ),
                        //you can set more BoxShadow() here
                      ],
                    ),
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.all(10),
                          width: 140,
                          height: 100,
                          child: CircleAvatar(
                            radius: 16.0,
                            child: ClipRRect(
                              child: Image.asset('assets/images/lucknowd.png'),
                              borderRadius: BorderRadius.circular(50.0),
                            ),
                          ),
                        ),
                        Container(
                            child: Text('nikhil solanki',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12))),
                        SizedBox(
                          height: 8,
                        ),
                        Container(
                            child: Text('Skill Score:691',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12))),
                        SizedBox(
                          height: 8,
                        ),
                        Container(
                            child: Text('Top Player',
                                style: TextStyle(
                                    color: Colors.grey,
                                    // fontWeight: FontWeight.bold,
                                    fontSize: 12))),
                        SizedBox(
                          height: 8,
                        ),
                        Container(
                          height: 35,
                          width: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(0.0),
                            border: Border.all(
                              color: Colors.green,
                              width: 2.0,
                            ),
                          ),
                          padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                          child: FlatButton(
                            child: Text(
                              'Follow',
                              style: TextStyle(
                                fontSize: 16.0,
                              ),
                            ),
                            color: Colors.green,
                            textColor: Colors.white,
                            onPressed: () {},
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      //border corner radius
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          //color of shadow
                          spreadRadius: 3,
                          //spread radius
                          blurRadius: 4,
                          // blur radius
                          offset: Offset(0, 2), // changes position of shadow
                        ),
                        //you can set more BoxShadow() here
                      ],
                    ),
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.all(10),
                          width: 140,
                          height: 100,
                          child: CircleAvatar(
                            radius: 16.0,
                            child: ClipRRect(
                              child: Image.asset('assets/images/lucknowd.png'),
                              borderRadius: BorderRadius.circular(50.0),
                            ),
                          ),
                        ),
                        Container(
                            child: Text('nikhil solanki',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12))),
                        SizedBox(
                          height: 8,
                        ),
                        Container(
                            child: Text('Skill Score:691',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12))),
                        SizedBox(
                          height: 8,
                        ),
                        Container(
                            child: Text('Top Player',
                                style: TextStyle(
                                    color: Colors.grey,
                                    // fontWeight: FontWeight.bold,
                                    fontSize: 12))),
                        SizedBox(
                          height: 8,
                        ),
                        Container(
                          height: 35,
                          width: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(0.0),
                            border: Border.all(
                              color: Colors.green,
                              width: 2.0,
                            ),
                          ),
                          padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                          child: FlatButton(
                            child: Text(
                              'Follow',
                              style: TextStyle(
                                fontSize: 16.0,
                              ),
                            ),
                            color: Colors.green,
                            textColor: Colors.white,
                            onPressed: () {},
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      //border corner radius
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          //color of shadow
                          spreadRadius: 3,
                          //spread radius
                          blurRadius: 4,
                          // blur radius
                          offset: Offset(0, 2), // changes position of shadow
                        ),
                        //you can set more BoxShadow() here
                      ],
                    ),
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.all(10),
                          width: 140,
                          height: 100,
                          child: CircleAvatar(
                            radius: 16.0,
                            child: ClipRRect(
                              child: Image.asset('assets/images/lucknowd.png'),
                              borderRadius: BorderRadius.circular(50.0),
                            ),
                          ),
                        ),
                        Container(
                            child: Text('nikhil solanki',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12))),
                        SizedBox(
                          height: 8,
                        ),
                        Container(
                            child: Text('Skill Score:691',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12))),
                        SizedBox(
                          height: 8,
                        ),
                        Container(
                            child: Text('Top Player',
                                style: TextStyle(
                                    color: Colors.grey,
                                    // fontWeight: FontWeight.bold,
                                    fontSize: 12))),
                        SizedBox(
                          height: 8,
                        ),
                        Container(
                          height: 35,
                          width: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(0.0),
                            border: Border.all(
                              color: Colors.green,
                              width: 2.0,
                            ),
                          ),
                          padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                          child: FlatButton(
                            child: Text(
                              'Follow',
                              style: TextStyle(
                                fontSize: 16.0,
                              ),
                            ),
                            color: Colors.green,
                            textColor: Colors.white,
                            onPressed: () {},
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                ]))
          ],
        ));
  }
}
