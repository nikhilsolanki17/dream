import 'package:carousel_slider/carousel_slider.dart';
import 'package:dream/balance/balancec.dart';
import 'package:dream/collect/collectt.dart';
import 'package:dream/findpeople/findpeoplel.dart';
import 'package:dream/howtoplay/play.dart';
import 'package:dream/more/moremore.dart';
import 'package:dream/myinfosettings/myinfosettings.dart';
import 'package:dream/mylevel/mylelvel.dart';
import 'package:dream/notification/notification.dart';
import 'package:dream/series/seriesle.dart';
import 'package:dream/tataipl.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

void main() => runApp(MyApp());

/// This Widget is the main application widget.
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  Widget build(BuildContext context) {
    return Scaffold(

      // body: DefaultTabController(
      //      length: 3,
      //      child: Scaffold(),
      // //    ),
      //    bottomNavigationBar: BottomNavigationBar(
      //      items: const <BottomNavigationBarItem>[
      //        BottomNavigationBarItem(
      //          icon: Icon(
      //            Icons.home,
      //            color: Colors.grey,
      //            size: 35,
      //          ),
      //          label: 'Home',
      //          backgroundColor: Colors.white,
      //        ),
      //        BottomNavigationBarItem(
      //          icon: Icon(
      //            Icons.wine_bar_outlined,
      //            color: Colors.grey,
      //            size: 35,
      //          ),
      //          label: 'Home',
      //          backgroundColor: Colors.red,
      //        ),
      //        BottomNavigationBarItem(
      //          icon: Icon(
      //            Icons.camera_outlined,
      //            color: Colors.grey,
      //            size: 35,
      //          ),
      //          label: 'Home',
      //          backgroundColor: Colors.red,
      //        ),
      //        BottomNavigationBarItem(
      //          icon: Icon(
      //            Icons.chat,
      //            color: Colors.grey,
      //            size: 35,
      //          ),
      //          label: 'Home',
      //          backgroundColor: Colors.red,
      //        ),
      //        BottomNavigationBarItem(
      //          icon: Icon(
      //            Icons.card_giftcard_outlined,
      //            color: Colors.grey,
      //            size: 35,
      //          ),
      //          label: 'Home',
      //          backgroundColor: Colors.red,
      //        ),
      //      ],
      //    ),
        appBar: AppBar(
          //title: Text("Dream11"),
          actions: <Widget>[
            Container(
              padding: EdgeInsets.fromLTRB(0, 0, 50, 0),
              child: IconButton(
                iconSize: 120,
                icon: Image.asset('assets/images/red11.png'),
                onPressed: () => (0),
              ),
            ),
            IconButton(
              icon: Icon(Icons.notifications),
              tooltip: 'Comment Icon',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => notification()),
                );
              },
            ), //IconButton
            IconButton(
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
                                      padding:
                                      EdgeInsets.fromLTRB(118, 10, 50, 0),
                                      child: Text('TOTAL BALANCE',
                                          style: TextStyle(
                                              color: Colors.grey,
                                              //  fontWeight: FontWeight.bold,
                                              fontSize: 18))),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                      padding:
                                      EdgeInsets.fromLTRB(180, 10, 50, 0),
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
                                            padding: EdgeInsets.fromLTRB(
                                                7, 00, 0, 0),
                                            child: Text('₹0',
                                                style: TextStyle(
                                                    color: Colors.grey,
                                                    //  fontWeight: FontWeight.bold,
                                                    fontSize: 13)),
                                          ),
                                          Container(
                                            padding: EdgeInsets.fromLTRB(
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
                                            padding: EdgeInsets.fromLTRB(
                                                7, 00, 0, 0),
                                            child: Text('₹0',
                                                style: TextStyle(
                                                    color: Colors.grey,
                                                    //  fontWeight: FontWeight.bold,
                                                    fontSize: 13)),
                                          ),
                                          Container(
                                            padding: EdgeInsets.fromLTRB(
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
                                            padding: EdgeInsets.fromLTRB(
                                                7, 00, 0, 0),
                                            child: Text('₹0',
                                                style: TextStyle(
                                                    color: Colors.grey,
                                                    //  fontWeight: FontWeight.bold,
                                                    fontSize: 13)),
                                          ),
                                          Container(
                                            padding: EdgeInsets.fromLTRB(
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
                                            color: Colors.lightGreenAccent,
                                          ),
                                          borderRadius:
                                          BorderRadius.circular(0.0),
                                        ),
                                        child: Row(
                                          children: [
                                            Container(
                                              padding: EdgeInsets.fromLTRB(
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
                                                      EdgeInsets.fromLTRB(
                                                          7, 00, 0, 0),
                                                      child: Text(
                                                          'Maximum usable Cash Bonus per match=10% of Entry Fees',
                                                          style: TextStyle(
                                                              color:
                                                              Colors.grey,
                                                              //  fontWeight: FontWeight.bold,
                                                              fontSize: 10)),
                                                    ),
                                                    Container(
                                                      padding:
                                                      EdgeInsets.fromLTRB(
                                                          13, 5, 0, 0),
                                                      child: Icon(
                                                        Icons.cancel_outlined,
                                                        color: Colors.black,
                                                        size: 15.0,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Container(
                                                  padding: EdgeInsets.fromLTRB(
                                                      0, 00, 240, 0),
                                                  child: Text('Known more',
                                                      style: TextStyle(
                                                          color: Colors.black,
                                                          decoration:
                                                          TextDecoration
                                                              .underline,
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
            ), //IconButton
          ],
          //<Widget>[]
          backgroundColor: Colors.redAccent[700],
          elevation: 0.0,

          //IconButton
          //  brightness: Brightness.dark,
        ),
//                 return showGeneralDialog(
//                     context: context,
//                     barrierDismissible: true,
//                     transitionDuration: Duration(microseconds: 500),
//                     barrierLabel:MaterialLocalizations.of(context).dialogLabel,
//                     barrierColor: Color.black.withOpacity(0.5),
//
//
//                     pageBuilder: (context,_,_){
// return
//                     }
//                 );
        // drawer
        drawer: Scrollbar(
          child: Drawer(
            child: new ListView(
              children: <Widget>[
                //    header
                new UserAccountsDrawerHeader(
                  currentAccountPicture: GestureDetector(
                    child: new CircleAvatar(
                      backgroundColor: Colors.grey,
                      child: Icon(
                        Icons.person,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  accountName: Text('nikhil Solani'),
                  accountEmail: Text('nku.nn@Gmail.Com'),

                  //BoxDecoration
                  decoration: new BoxDecoration(color: Colors.black),
                ),
                //    DRAWER nceBODY
                //My bala
                InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => balance()),
                      );
                    },
                    child: ListTile(
                      title: Text('My Balance'),
                      leading: Icon(Icons.account_balance_wallet_outlined),
                    )),
                InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => collect()),
                      );
                    },
                    child: ListTile(
                      title: Text('Collect ₹ 500'),
                      leading: Icon(Icons.money, color: Colors.green),
                    )),

                InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Mylevel()),
                      );
                    },
                    child: ListTile(
                      title: Text('My Level'),
                      leading: Icon(
                        Icons.monetization_on_outlined,
                        color: Colors.green,
                      ),
                    )),
                Divider(),
                InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => fpeople()),
                      );
                    },
                    child: ListTile(
                      title: Text('Find People'),
                      leading: Icon(Icons.search),
                    )),
                InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => howto()),
                      );
                    },
                    child: ListTile(
                      title: Text('How to play'),
                      leading: Icon(
                        Icons.videogame_asset_outlined,
                      ),
                    )),
                Divider(),
                //underline
                InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Seriesleader()),
                      );
                    },
                    child: ListTile(
                      title: Text('Series Leaderboard'),
                      leading: Icon(
                        Icons.star_border_purple500_outlined,
                      ),
                    )),
                Divider(),
                InkWell(
                    onTap: () {},
                    child: ListTile(
                      title: Column(
                        children: [
                          Container(
                              padding: EdgeInsets.fromLTRB(0, 0, 121, 0),
                              child: Text('Watch Live',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17))),
                          Container(
                              padding: EdgeInsets.fromLTRB(0, 0, 50, 0),
                              child: Text('Matches & highlights on FanCode',
                                  style: TextStyle(
                                      color: Colors.black,
                                      //  fontWeight: FontWeight.bold,
                                      fontSize: 10))),
                        ],
                      ),
                      leading: Icon(
                        Icons.live_tv_outlined,
                        color: Colors.deepOrange,
                      ),
                    )),
                InkWell(
                    onTap: () {},
                    child: ListTile(
                      title: Column(
                        children: [
                          Container(
                              padding: EdgeInsets.fromLTRB(0, 0, 90, 0),
                              child: Text('FanCode Shop',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17))),
                          Container(
                              padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                              child:
                              Text('Offical T20 & Dream11 x PUMA Fan Gear',
                                  style: TextStyle(
                                      color: Colors.black,
                                      //  fontWeight: FontWeight.bold,
                                      fontSize: 10))),
                        ],
                      ),
                      leading: Icon(
                        Icons.shopping_bag_outlined,
                        color: Colors.deepOrange,
                      ),
                    )),
                Divider(),
                InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Myinfoset()),
                      );
                    },
                    child: ListTile(
                      title: Text('My Info & Settings'),
                      leading: Icon(
                        Icons.settings,
                      ),
                    )),
                InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => More()),
                      );
                    },
                    child: ListTile(
                      title: Text('More'),
                      leading: Icon(
                        Icons.blur_circular,
                      ),
                    )),
                Divider(),
                InkWell(
                    onTap: () {},
                    child: ListTile(
                      title: Text(
                        'Version 4.47.0',
                      ),
                    )),
                Container(
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                    ),
                    borderRadius: BorderRadius.circular(0.0),
                  ),
                  child: Row(
                    children: <Widget>[
                      Container(
                        child: Icon(
                          Icons.help_outline_outlined,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                          child: Text('Helpdesk',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 17))),
                      const VerticalDivider(
                        width: 50,
                        thickness: 1,
                        indent: 3,
                        endIndent: 0,
                        color: Colors.grey,
                      ),
                      Container(
                        child: Icon(
                          Icons.chat,
                          color: Colors.black,
                        ),
                      ),
                      Container(
                          child: Text('Chat With US',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 17))),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        body: DefaultTabController(
          length: 6,
          child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.white,
              bottom: TabBar(
                isScrollable: true,
                tabs: [
                  Tab(
                      icon: Icon(
                        Icons.sports_baseball,
                        color: Colors.black,
                      ),
                      child: new Text(
                        'Cricket',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      )),
                  Tab(
                      icon: Icon(Icons.sports_volleyball_outlined,
                          color: Colors.black),
                      child: new Text(
                        'Football',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      )),
                  Tab(
                      icon: Icon(Icons.sports_basketball_outlined,
                          color: Colors.black),
                      child: new Text(
                        'Basketball',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      )),
                  Tab(
                      icon: Icon(Icons.sports_baseball_outlined,
                          color: Colors.black),
                      child: new Text(
                        'Baseball',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      )),
                  Tab(
                      icon: Icon(Icons.sports_hockey, color: Colors.black),
                      child: new Text(
                        'Hockey',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      )),
                  Tab(
                      icon: Icon(Icons.sports_handball, color: Colors.black),
                      child: new Text(
                        'Handvall',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      )),
                ],
              ),
            ),
            body: Scrollbar(
              child: TabBarView(
                children: [
                  SingleChildScrollView(
                    child: Column(
                      children: [
                        CarouselSlider(
                          items: [
                            Container(
                              margin: EdgeInsets.all(6.0),
                              child: Image.asset(
                                "assets/images/dream.png",
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.all(6.0),
                              child: Image.asset(
                                "assets/images/dhoni.png",
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.all(6.0),
                              child: Image.asset(
                                "assets/images/dream11.png",
                              ),
                            ),
                          ],
                          options: CarouselOptions(
                            height: 100.0,
                            enlargeCenterPage: true,
                            autoPlay: true,
                            aspectRatio: 16 / 9,
                            autoPlayCurve: Curves.fastOutSlowIn,
                            enableInfiniteScroll: true,
                            autoPlayAnimationDuration:
                            Duration(milliseconds: 800),
                            viewportFraction: 0.8,
                          ),
                        ),
                        Container(
                            padding: EdgeInsets.fromLTRB(20, 0, 196, 0),
                            child: Text('Upcoming Matches',
                                style: TextStyle(
                                    color: Colors.grey[800],
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20))),
                        SizedBox(
                          height: 10,
                        ),
                        //tata ipl
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => TATAIPL()),
                            );
                          },
                          child: Container(
                            width: 350,
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Container(
                                        padding:
                                        EdgeInsets.fromLTRB(10, 0, 0, 0),
                                        child: Text('TATA IPL',
                                            style: TextStyle(
                                                color: Colors.grey[800],
                                                // fontWeight: FontWeight.bold,
                                                fontSize: 12))),
                                    SizedBox(
                                      width: 239,
                                    ),
                                    Container(
                                      child: Icon(
                                        Icons.notifications_outlined,
                                        color: Colors.black,
                                        size: 25.0,
                                      ),
                                    ),
                                  ],
                                ),
                                Divider(),
                                Row(
                                  children: [
                                    Container(
                                        padding:
                                        EdgeInsets.fromLTRB(10, 0, 0, 0),
                                        child: Text('Lucknow',
                                            style: TextStyle(
                                                color: Colors.grey[800],
                                                // fontWeight: FontWeight.bold,
                                                fontSize: 12))),
                                    SizedBox(
                                      width: 190,
                                    ),
                                    Container(
                                        child: Text('Delhi  Capitals',
                                            style: TextStyle(
                                                color: Colors.grey[800],
                                                // fontWeight: FontWeight.bold,
                                                fontSize: 12))),
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                      child: Container(
                                        child: Image.asset(
                                          "assets/images/lucknowd.png",
                                          height: 30,
                                          width: 30,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                        child: Text('LKN',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 12))),
                                    SizedBox(
                                      width: 50,
                                    ),
                                    Container(
                                      child: new Text(
                                        ' 20h 52m',
                                        style: TextStyle(
                                            color: Colors.redAccent,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 90,
                                    ),
                                    Container(
                                        child: Text('DC',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 12))),
                                    Container(
                                      padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                      child: Container(
                                        child: Image.asset(
                                          "assets/images/lucknowd.png",
                                          height: 30,
                                          width: 30,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  color: Colors.white60,
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Container(
                                        alignment: Alignment.center,
                                        width: 50,
                                        height: 20,
                                        margin: EdgeInsets.all(1),
                                        padding: EdgeInsets.all(2),
                                        child: Text(
                                          'MEGA',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 12),
                                        ),
                                        decoration: BoxDecoration(
                                            color: Colors.greenAccent[100],
                                            border: Border(
                                                bottom: BorderSide(
                                                  color: Colors.greenAccent,
                                                  width: 1,
                                                ))),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Container(
                                        child: new Text(
                                          '₹35 Crore',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 11),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 180,
                                      ),
                                      Container(
                                        child: Icon(
                                          Icons.wallet_travel_outlined,
                                          color: Colors.black,
                                          size: 20.0,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
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
                            height: 130,
                          ),
                        ),
                        //2
                        SizedBox(
                          height: 30,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => TATAIPL()),
                            );
                          },
                          child: Container(
                            width: 350,
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Container(
                                        padding:
                                        EdgeInsets.fromLTRB(10, 0, 0, 0),
                                        child: Text('TATA IPL',
                                            style: TextStyle(
                                                color: Colors.grey[800],
                                                // fontWeight: FontWeight.bold,
                                                fontSize: 12))),
                                    SizedBox(
                                      width: 239,
                                    ),
                                    Container(
                                      child: Icon(
                                        Icons.notifications_outlined,
                                        color: Colors.black,
                                        size: 25.0,
                                      ),
                                    ),
                                  ],
                                ),
                                Divider(),
                                Row(
                                  children: [
                                    Container(
                                        padding:
                                        EdgeInsets.fromLTRB(10, 0, 0, 0),
                                        child: Text('Lucknow',
                                            style: TextStyle(
                                                color: Colors.grey[800],
                                                // fontWeight: FontWeight.bold,
                                                fontSize: 12))),
                                    SizedBox(
                                      width: 190,
                                    ),
                                    Container(
                                        child: Text('Delhi  Capitals',
                                            style: TextStyle(
                                                color: Colors.grey[800],
                                                // fontWeight: FontWeight.bold,
                                                fontSize: 12))),
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                      child: Container(
                                        child: Image.asset(
                                          "assets/images/lucknowd.png",
                                          height: 30,
                                          width: 30,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                        child: Text('LKN',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 12))),
                                    SizedBox(
                                      width: 50,
                                    ),
                                    Container(
                                      child: new Text(
                                        ' 20h 52m',
                                        style: TextStyle(
                                            color: Colors.redAccent,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 90,
                                    ),
                                    Container(
                                        child: Text('DC',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 12))),
                                    Container(
                                      padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                      child: Container(
                                        child: Image.asset(
                                          "assets/images/lucknowd.png",
                                          height: 30,
                                          width: 30,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  color: Colors.white60,
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Container(
                                        alignment: Alignment.center,
                                        width: 50,
                                        height: 20,
                                        margin: EdgeInsets.all(1),
                                        padding: EdgeInsets.all(2),
                                        child: Text(
                                          'MEGA',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 12),
                                        ),
                                        decoration: BoxDecoration(
                                            color: Colors.greenAccent[100],
                                            border: Border(
                                                bottom: BorderSide(
                                                  color: Colors.greenAccent,
                                                  width: 1,
                                                ))),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Container(
                                        child: new Text(
                                          '₹35 Crore',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 11),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 180,
                                      ),
                                      Container(
                                        child: Icon(
                                          Icons.wallet_travel_outlined,
                                          color: Colors.black,
                                          size: 20.0,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
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
                            height: 130,
                          ),
                        ),
                        //2

                        SizedBox(
                          height: 30,
                        ),
                        //tata ipl
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => TATAIPL()),
                            );
                          },
                          child: Container(
                            width: 350,
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Container(
                                        padding:
                                        EdgeInsets.fromLTRB(10, 0, 0, 0),
                                        child: Text('TATA IPL',
                                            style: TextStyle(
                                                color: Colors.grey[800],
                                                // fontWeight: FontWeight.bold,
                                                fontSize: 12))),
                                    SizedBox(
                                      width: 239,
                                    ),
                                    Container(
                                      child: Icon(
                                        Icons.notifications_outlined,
                                        color: Colors.black,
                                        size: 25.0,
                                      ),
                                    ),
                                  ],
                                ),
                                Divider(),
                                Row(
                                  children: [
                                    Container(
                                        padding:
                                        EdgeInsets.fromLTRB(10, 0, 0, 0),
                                        child: Text('Lucknow',
                                            style: TextStyle(
                                                color: Colors.grey[800],
                                                // fontWeight: FontWeight.bold,
                                                fontSize: 12))),
                                    SizedBox(
                                      width: 190,
                                    ),
                                    Container(
                                        child: Text('Delhi  Capitals',
                                            style: TextStyle(
                                                color: Colors.grey[800],
                                                // fontWeight: FontWeight.bold,
                                                fontSize: 12))),
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                      child: Container(
                                        child: Image.asset(
                                          "assets/images/lucknowd.png",
                                          height: 30,
                                          width: 30,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                        child: Text('LKN',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 12))),
                                    SizedBox(
                                      width: 50,
                                    ),
                                    Container(
                                      child: new Text(
                                        ' 20h 52m',
                                        style: TextStyle(
                                            color: Colors.redAccent,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 90,
                                    ),
                                    Container(
                                        child: Text('DC',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 12))),
                                    Container(
                                      padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                      child: Container(
                                        child: Image.asset(
                                          "assets/images/lucknowd.png",
                                          height: 30,
                                          width: 30,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  color: Colors.white60,
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Container(
                                        alignment: Alignment.center,
                                        width: 50,
                                        height: 20,
                                        margin: EdgeInsets.all(1),
                                        padding: EdgeInsets.all(2),
                                        child: Text(
                                          'MEGA',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 12),
                                        ),
                                        decoration: BoxDecoration(
                                            color: Colors.greenAccent[100],
                                            border: Border(
                                                bottom: BorderSide(
                                                  color: Colors.greenAccent,
                                                  width: 1,
                                                ))),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Container(
                                        child: new Text(
                                          '₹35 Crore',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 11),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 180,
                                      ),
                                      Container(
                                        child: Icon(
                                          Icons.wallet_travel_outlined,
                                          color: Colors.black,
                                          size: 20.0,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
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
                            height: 130,
                          ),
                        ),
                        //end
                        SizedBox(
                          height: 30,
                        ),
                        //tata
                        Container(
                          //new
                          width: 350,
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    padding: EdgeInsets.fromLTRB(8, 3, 0, 0),
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
                                    padding: EdgeInsets.fromLTRB(8, 3, 0, 0),
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
                                    padding: EdgeInsets.fromLTRB(8, 3, 0, 0),
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
                                    padding: EdgeInsets.fromLTRB(8, 3, 0, 0),
                                    child: Text('₹59',
                                        style: TextStyle(
                                            color: Colors.greenAccent[400],
                                            decoration:
                                            TextDecoration.lineThrough,
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
                                    padding: EdgeInsets.fromLTRB(8, 3, 0, 0),
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
                                    padding: EdgeInsets.fromLTRB(8, 3, 0, 0),
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
                                    padding: EdgeInsets.fromLTRB(8, 3, 0, 0),
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
                                    padding: EdgeInsets.fromLTRB(0, 3, 0, 0),
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
                                    padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
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
                                offset:
                                Offset(0, 2), // changes position of shadow
                              ),
                              //you can set more BoxShadow() here
                            ],
                          ),
                          height: 150,
                        ),
                      ],
                    ),
                  ),
                  SingleChildScrollView(
                    child: Column(
                      children: [
                        CarouselSlider(
                          items: [
                            Container(
                              margin: EdgeInsets.all(6.0),
                              child: Image.asset(
                                "assets/images/dream.png",
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.all(6.0),
                              child: Image.asset(
                                "assets/images/dhoni.png",
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.all(6.0),
                              child: Image.asset(
                                "assets/images/dream11.png",
                              ),
                            ),
                          ],
                          options: CarouselOptions(
                            height: 100.0,
                            enlargeCenterPage: true,
                            autoPlay: true,
                            aspectRatio: 16 / 9,
                            autoPlayCurve: Curves.fastOutSlowIn,
                            enableInfiniteScroll: true,
                            autoPlayAnimationDuration:
                            Duration(milliseconds: 800),
                            viewportFraction: 0.8,
                          ),
                        ),
                        Container(
                            padding: EdgeInsets.fromLTRB(20, 0, 196, 0),
                            child: Text('Upcoming Matches',
                                style: TextStyle(
                                    color: Colors.grey[800],
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20))),
                        SizedBox(
                          height: 10,
                        ),
                        //tata ipl
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => TATAIPL()),
                            );
                          },
                          child: Container(
                            width: 350,
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Container(
                                        padding:
                                        EdgeInsets.fromLTRB(10, 0, 0, 0),
                                        child: Text('TATA IPL',
                                            style: TextStyle(
                                                color: Colors.grey[800],
                                                // fontWeight: FontWeight.bold,
                                                fontSize: 12))),
                                    SizedBox(
                                      width: 239,
                                    ),
                                    Container(
                                      child: Icon(
                                        Icons.notifications_outlined,
                                        color: Colors.black,
                                        size: 25.0,
                                      ),
                                    ),
                                  ],
                                ),
                                Divider(),
                                Row(
                                  children: [
                                    Container(
                                        padding:
                                        EdgeInsets.fromLTRB(10, 0, 0, 0),
                                        child: Text('Lucknow',
                                            style: TextStyle(
                                                color: Colors.grey[800],
                                                // fontWeight: FontWeight.bold,
                                                fontSize: 12))),
                                    SizedBox(
                                      width: 190,
                                    ),
                                    Container(
                                        child: Text('Delhi  Capitals',
                                            style: TextStyle(
                                                color: Colors.grey[800],
                                                // fontWeight: FontWeight.bold,
                                                fontSize: 12))),
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                      child: Container(
                                        child: Image.asset(
                                          "assets/images/lucknowd.png",
                                          height: 30,
                                          width: 30,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                        child: Text('LKN',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 12))),
                                    SizedBox(
                                      width: 50,
                                    ),
                                    Container(
                                      child: new Text(
                                        ' 20h 52m',
                                        style: TextStyle(
                                            color: Colors.redAccent,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 90,
                                    ),
                                    Container(
                                        child: Text('DC',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 12))),
                                    Container(
                                      padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                      child: Container(
                                        child: Image.asset(
                                          "assets/images/lucknowd.png",
                                          height: 30,
                                          width: 30,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  color: Colors.white60,
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Container(
                                        alignment: Alignment.center,
                                        width: 50,
                                        height: 20,
                                        margin: EdgeInsets.all(1),
                                        padding: EdgeInsets.all(2),
                                        child: Text(
                                          'MEGA',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 12),
                                        ),
                                        decoration: BoxDecoration(
                                            color: Colors.greenAccent[100],
                                            border: Border(
                                                bottom: BorderSide(
                                                  color: Colors.greenAccent,
                                                  width: 1,
                                                ))),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Container(
                                        child: new Text(
                                          '₹35 Crore',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 11),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 180,
                                      ),
                                      Container(
                                        child: Icon(
                                          Icons.wallet_travel_outlined,
                                          color: Colors.black,
                                          size: 20.0,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
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
                            height: 130,
                          ),
                        ),
                        //2
                        SizedBox(
                          height: 30,
                        ),
                        Container(
                          width: 350,
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                      padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                      child: Text('TATA IPL',
                                          style: TextStyle(
                                              color: Colors.grey[800],
                                              // fontWeight: FontWeight.bold,
                                              fontSize: 12))),
                                  SizedBox(
                                    width: 239,
                                  ),
                                  Container(
                                    child: Icon(
                                      Icons.notifications_outlined,
                                      color: Colors.black,
                                      size: 25.0,
                                    ),
                                  ),
                                ],
                              ),
                              Divider(),
                              Row(
                                children: [
                                  Container(
                                      padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                      child: Text('Lucknow',
                                          style: TextStyle(
                                              color: Colors.grey[800],
                                              // fontWeight: FontWeight.bold,
                                              fontSize: 12))),
                                  SizedBox(
                                    width: 190,
                                  ),
                                  Container(
                                      child: Text('Delhi  Capitals',
                                          style: TextStyle(
                                              color: Colors.grey[800],
                                              // fontWeight: FontWeight.bold,
                                              fontSize: 12))),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Container(
                                    padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                    child: Container(
                                      child: Image.asset(
                                        "assets/images/lucknowd.png",
                                        height: 30,
                                        width: 30,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                      child: Text('LKN',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 12))),
                                  SizedBox(
                                    width: 50,
                                  ),
                                  Container(
                                    child: new Text(
                                      ' 20h 52m',
                                      style: TextStyle(
                                          color: Colors.redAccent,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 90,
                                  ),
                                  Container(
                                      child: Text('DC',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 12))),
                                  Container(
                                    padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                    child: Container(
                                      child: Image.asset(
                                        "assets/images/lucknowd.png",
                                        height: 30,
                                        width: 30,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                color: Colors.white60,
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                      alignment: Alignment.center,
                                      width: 50,
                                      height: 20,
                                      margin: EdgeInsets.all(1),
                                      padding: EdgeInsets.all(2),
                                      child: Text(
                                        'MEGA',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12),
                                      ),
                                      decoration: BoxDecoration(
                                          color: Colors.greenAccent[100],
                                          border: Border(
                                              bottom: BorderSide(
                                                color: Colors.greenAccent,
                                                width: 1,
                                              ))),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                      child: new Text(
                                        '₹35 Crore',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 11),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 180,
                                    ),
                                    Container(
                                      child: Icon(
                                        Icons.wallet_travel_outlined,
                                        color: Colors.black,
                                        size: 20.0,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            //border corner radius
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                //color of shadow
                                spreadRadius: 5,
                                //spread radius
                                blurRadius: 7,
                                // blur radius
                                offset:
                                Offset(0, 2), // changes position of shadow
                              ),
                              //you can set more BoxShadow() here
                            ],
                          ),
                          height: 130,
                        ),
                        //2
                        SizedBox(
                          height: 30,
                        ),
                        //tata ipl
                        Container(
                          width: 350,
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                      padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                      child: Text('TATA IPL',
                                          style: TextStyle(
                                              color: Colors.grey[800],
                                              // fontWeight: FontWeight.bold,
                                              fontSize: 12))),
                                  SizedBox(
                                    width: 239,
                                  ),
                                  Container(
                                    child: Icon(
                                      Icons.notifications_outlined,
                                      color: Colors.black,
                                      size: 25.0,
                                    ),
                                  ),
                                ],
                              ),
                              Divider(),
                              Row(
                                children: [
                                  Container(
                                      padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                      child: Text('Lucknow',
                                          style: TextStyle(
                                              color: Colors.grey[800],
                                              // fontWeight: FontWeight.bold,
                                              fontSize: 12))),
                                  SizedBox(
                                    width: 190,
                                  ),
                                  Container(
                                      child: Text('Delhi  Capitals',
                                          style: TextStyle(
                                              color: Colors.grey[800],
                                              // fontWeight: FontWeight.bold,
                                              fontSize: 12))),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Container(
                                    padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                    child: Container(
                                      child: Image.asset(
                                        "assets/images/lucknowd.png",
                                        height: 30,
                                        width: 30,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                      child: Text('LKN',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 12))),
                                  SizedBox(
                                    width: 50,
                                  ),
                                  Container(
                                    child: new Text(
                                      ' 20h 52m',
                                      style: TextStyle(
                                          color: Colors.redAccent,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 90,
                                  ),
                                  Container(
                                      child: Text('DC',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 12))),
                                  Container(
                                    padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                    child: Container(
                                      child: Image.asset(
                                        "assets/images/lucknowd.png",
                                        height: 30,
                                        width: 30,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                color: Colors.white60,
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                      alignment: Alignment.center,
                                      width: 50,
                                      height: 20,
                                      margin: EdgeInsets.all(1),
                                      padding: EdgeInsets.all(2),
                                      child: Text(
                                        'MEGA',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12),
                                      ),
                                      decoration: BoxDecoration(
                                          color: Colors.greenAccent[100],
                                          border: Border(
                                              bottom: BorderSide(
                                                color: Colors.greenAccent,
                                                width: 1,
                                              ))),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                      child: new Text(
                                        '₹35 Crore',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 11),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 180,
                                    ),
                                    Container(
                                      child: Icon(
                                        Icons.wallet_travel_outlined,
                                        color: Colors.black,
                                        size: 20.0,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            //border corner radius
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                //color of shadow
                                spreadRadius: 5,
                                //spread radius
                                blurRadius: 7,
                                // blur radius
                                offset:
                                Offset(0, 2), // changes position of shadow
                              ),
                              //you can set more BoxShadow() here
                            ],
                          ),
                          height: 130,
                        ),
                        //end
                        SizedBox(
                          height: 30,
                        ),
                        //tata
                        Container(
                          //new
                          width: 350,
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    padding: EdgeInsets.fromLTRB(8, 3, 0, 0),
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
                                    padding: EdgeInsets.fromLTRB(8, 3, 0, 0),
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
                                    padding: EdgeInsets.fromLTRB(8, 3, 0, 0),
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
                                    padding: EdgeInsets.fromLTRB(8, 3, 0, 0),
                                    child: Text('₹59',
                                        style: TextStyle(
                                            color: Colors.greenAccent[400],
                                            decoration:
                                            TextDecoration.lineThrough,
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
                                    padding: EdgeInsets.fromLTRB(8, 3, 0, 0),
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
                                    padding: EdgeInsets.fromLTRB(8, 3, 0, 0),
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
                                    padding: EdgeInsets.fromLTRB(8, 3, 0, 0),
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
                                    padding: EdgeInsets.fromLTRB(0, 3, 0, 0),
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
                                    padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
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
                                offset:
                                Offset(0, 2), // changes position of shadow
                              ),
                              //you can set more BoxShadow() here
                            ],
                          ),
                          height: 150,
                        ),
                      ],
                    ),
                  ),
                  SingleChildScrollView(
                    child: Column(
                      children: [
                        CarouselSlider(
                          items: [
                            Container(
                              margin: EdgeInsets.all(6.0),
                              child: Image.asset(
                                "assets/images/dream.png",
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.all(6.0),
                              child: Image.asset(
                                "assets/images/dhoni.png",
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.all(6.0),
                              child: Image.asset(
                                "assets/images/dream11.png",
                              ),
                            ),
                          ],
                          options: CarouselOptions(
                            height: 100.0,
                            enlargeCenterPage: true,
                            autoPlay: true,
                            aspectRatio: 16 / 9,
                            autoPlayCurve: Curves.fastOutSlowIn,
                            enableInfiniteScroll: true,
                            autoPlayAnimationDuration:
                            Duration(milliseconds: 800),
                            viewportFraction: 0.8,
                          ),
                        ),
                        Container(
                            padding: EdgeInsets.fromLTRB(20, 0, 196, 0),
                            child: Text('Upcoming Matches',
                                style: TextStyle(
                                    color: Colors.grey[800],
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20))),
                        SizedBox(
                          height: 10,
                        ),
                        //tata ipl
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => TATAIPL()),
                            );
                          },
                          child: Container(
                            width: 350,
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Container(
                                        padding:
                                        EdgeInsets.fromLTRB(10, 0, 0, 0),
                                        child: Text('TATA IPL',
                                            style: TextStyle(
                                                color: Colors.grey[800],
                                                // fontWeight: FontWeight.bold,
                                                fontSize: 12))),
                                    SizedBox(
                                      width: 239,
                                    ),
                                    Container(
                                      child: Icon(
                                        Icons.notifications_outlined,
                                        color: Colors.black,
                                        size: 25.0,
                                      ),
                                    ),
                                  ],
                                ),
                                Divider(),
                                Row(
                                  children: [
                                    Container(
                                        padding:
                                        EdgeInsets.fromLTRB(10, 0, 0, 0),
                                        child: Text('Lucknow',
                                            style: TextStyle(
                                                color: Colors.grey[800],
                                                // fontWeight: FontWeight.bold,
                                                fontSize: 12))),
                                    SizedBox(
                                      width: 190,
                                    ),
                                    Container(
                                        child: Text('Delhi  Capitals',
                                            style: TextStyle(
                                                color: Colors.grey[800],
                                                // fontWeight: FontWeight.bold,
                                                fontSize: 12))),
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                      child: Container(
                                        child: Image.asset(
                                          "assets/images/lucknowd.png",
                                          height: 30,
                                          width: 30,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                        child: Text('LKN',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 12))),
                                    SizedBox(
                                      width: 50,
                                    ),
                                    Container(
                                      child: new Text(
                                        ' 20h 52m',
                                        style: TextStyle(
                                            color: Colors.redAccent,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 90,
                                    ),
                                    Container(
                                        child: Text('DC',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 12))),
                                    Container(
                                      padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                      child: Container(
                                        child: Image.asset(
                                          "assets/images/lucknowd.png",
                                          height: 30,
                                          width: 30,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  color: Colors.white60,
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Container(
                                        alignment: Alignment.center,
                                        width: 50,
                                        height: 20,
                                        margin: EdgeInsets.all(1),
                                        padding: EdgeInsets.all(2),
                                        child: Text(
                                          'MEGA',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 12),
                                        ),
                                        decoration: BoxDecoration(
                                            color: Colors.greenAccent[100],
                                            border: Border(
                                                bottom: BorderSide(
                                                  color: Colors.greenAccent,
                                                  width: 1,
                                                ))),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Container(
                                        child: new Text(
                                          '₹35 Crore',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 11),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 180,
                                      ),
                                      Container(
                                        child: Icon(
                                          Icons.wallet_travel_outlined,
                                          color: Colors.black,
                                          size: 20.0,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
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
                            height: 130,
                          ),
                        ),

                        //2

                        SizedBox(
                          height: 30,
                        ),
                        Container(
                          width: 350,
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                      padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                      child: Text('TATA IPL',
                                          style: TextStyle(
                                              color: Colors.grey[800],
                                              // fontWeight: FontWeight.bold,
                                              fontSize: 12))),
                                  SizedBox(
                                    width: 239,
                                  ),
                                  Container(
                                    child: Icon(
                                      Icons.notifications_outlined,
                                      color: Colors.black,
                                      size: 25.0,
                                    ),
                                  ),
                                ],
                              ),
                              Divider(),
                              Row(
                                children: [
                                  Container(
                                      padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                      child: Text('Lucknow',
                                          style: TextStyle(
                                              color: Colors.grey[800],
                                              // fontWeight: FontWeight.bold,
                                              fontSize: 12))),
                                  SizedBox(
                                    width: 190,
                                  ),
                                  Container(
                                      child: Text('Delhi  Capitals',
                                          style: TextStyle(
                                              color: Colors.grey[800],
                                              // fontWeight: FontWeight.bold,
                                              fontSize: 12))),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Container(
                                    padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                    child: Container(
                                      child: Image.asset(
                                        "assets/images/lucknowd.png",
                                        height: 30,
                                        width: 30,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                      child: Text('LKN',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 12))),
                                  SizedBox(
                                    width: 50,
                                  ),
                                  Container(
                                    child: new Text(
                                      ' 20h 52m',
                                      style: TextStyle(
                                          color: Colors.redAccent,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 90,
                                  ),
                                  Container(
                                      child: Text('DC',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 12))),
                                  Container(
                                    padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                    child: Container(
                                      child: Image.asset(
                                        "assets/images/lucknowd.png",
                                        height: 30,
                                        width: 30,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                color: Colors.white60,
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                      alignment: Alignment.center,
                                      width: 50,
                                      height: 20,
                                      margin: EdgeInsets.all(1),
                                      padding: EdgeInsets.all(2),
                                      child: Text(
                                        'MEGA',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12),
                                      ),
                                      decoration: BoxDecoration(
                                          color: Colors.greenAccent[100],
                                          border: Border(
                                              bottom: BorderSide(
                                                color: Colors.greenAccent,
                                                width: 1,
                                              ))),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                      child: new Text(
                                        '₹35 Crore',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 11),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 180,
                                    ),
                                    Container(
                                      child: Icon(
                                        Icons.wallet_travel_outlined,
                                        color: Colors.black,
                                        size: 20.0,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            //border corner radius
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                //color of shadow
                                spreadRadius: 5,
                                //spread radius
                                blurRadius: 7,
                                // blur radius
                                offset:
                                Offset(0, 2), // changes position of shadow
                              ),
                              //you can set more BoxShadow() here
                            ],
                          ),
                          height: 130,
                        ),
                        //2

                        SizedBox(
                          height: 30,
                        ),
                        //tata ipl
                        Container(
                          width: 350,
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                      padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                      child: Text('TATA IPL',
                                          style: TextStyle(
                                              color: Colors.grey[800],
                                              // fontWeight: FontWeight.bold,
                                              fontSize: 12))),
                                  SizedBox(
                                    width: 239,
                                  ),
                                  Container(
                                    child: Icon(
                                      Icons.notifications_outlined,
                                      color: Colors.black,
                                      size: 25.0,
                                    ),
                                  ),
                                ],
                              ),
                              Divider(),
                              Row(
                                children: [
                                  Container(
                                      padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                      child: Text('Lucknow',
                                          style: TextStyle(
                                              color: Colors.grey[800],
                                              // fontWeight: FontWeight.bold,
                                              fontSize: 12))),
                                  SizedBox(
                                    width: 190,
                                  ),
                                  Container(
                                      child: Text('Delhi  Capitals',
                                          style: TextStyle(
                                              color: Colors.grey[800],
                                              // fontWeight: FontWeight.bold,
                                              fontSize: 12))),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Container(
                                    padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                    child: Container(
                                      child: Image.asset(
                                        "assets/images/lucknowd.png",
                                        height: 30,
                                        width: 30,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                      child: Text('LKN',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 12))),
                                  SizedBox(
                                    width: 50,
                                  ),
                                  Container(
                                    child: new Text(
                                      ' 20h 52m',
                                      style: TextStyle(
                                          color: Colors.redAccent,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 90,
                                  ),
                                  Container(
                                      child: Text('DC',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 12))),
                                  Container(
                                    padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                    child: Container(
                                      child: Image.asset(
                                        "assets/images/lucknowd.png",
                                        height: 30,
                                        width: 30,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                color: Colors.white60,
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                      alignment: Alignment.center,
                                      width: 50,
                                      height: 20,
                                      margin: EdgeInsets.all(1),
                                      padding: EdgeInsets.all(2),
                                      child: Text(
                                        'MEGA',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12),
                                      ),
                                      decoration: BoxDecoration(
                                          color: Colors.greenAccent[100],
                                          border: Border(
                                              bottom: BorderSide(
                                                color: Colors.greenAccent,
                                                width: 1,
                                              ))),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                      child: new Text(
                                        '₹35 Crore',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 11),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 180,
                                    ),
                                    Container(
                                      child: Icon(
                                        Icons.wallet_travel_outlined,
                                        color: Colors.black,
                                        size: 20.0,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            //border corner radius
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                //color of shadow
                                spreadRadius: 5,
                                //spread radius
                                blurRadius: 7,
                                // blur radius
                                offset:
                                Offset(0, 2), // changes position of shadow
                              ),
                              //you can set more BoxShadow() here
                            ],
                          ),
                          height: 130,
                        ),
                        //end
                        SizedBox(
                          height: 30,
                        ),
                        //tata
                        Container(
                          //new
                          width: 350,
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    padding: EdgeInsets.fromLTRB(8, 3, 0, 0),
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
                                    padding: EdgeInsets.fromLTRB(8, 3, 0, 0),
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
                                    padding: EdgeInsets.fromLTRB(8, 3, 0, 0),
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
                                    padding: EdgeInsets.fromLTRB(8, 3, 0, 0),
                                    child: Text('₹59',
                                        style: TextStyle(
                                            color: Colors.greenAccent[400],
                                            decoration:
                                            TextDecoration.lineThrough,
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
                                    padding: EdgeInsets.fromLTRB(8, 3, 0, 0),
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
                                    padding: EdgeInsets.fromLTRB(8, 3, 0, 0),
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
                                    padding: EdgeInsets.fromLTRB(8, 3, 0, 0),
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
                                    padding: EdgeInsets.fromLTRB(0, 3, 0, 0),
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
                                    padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
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
                                offset:
                                Offset(0, 2), // changes position of shadow
                              ),
                              //you can set more BoxShadow() here
                            ],
                          ),
                          height: 150,
                        ),
                      ],
                    ),
                  ),
                  SingleChildScrollView(
                    child: Column(
                      children: [
                        CarouselSlider(
                          items: [
                            Container(
                              margin: EdgeInsets.all(6.0),
                              child: Image.asset(
                                "assets/images/dream.png",
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.all(6.0),
                              child: Image.asset(
                                "assets/images/dhoni.png",
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.all(6.0),
                              child: Image.asset(
                                "assets/images/dream11.png",
                              ),
                            ),
                          ],
                          options: CarouselOptions(
                            height: 100.0,
                            enlargeCenterPage: true,
                            autoPlay: true,
                            aspectRatio: 16 / 9,
                            autoPlayCurve: Curves.fastOutSlowIn,
                            enableInfiniteScroll: true,
                            autoPlayAnimationDuration:
                            Duration(milliseconds: 800),
                            viewportFraction: 0.8,
                          ),
                        ),
                        Container(
                            padding: EdgeInsets.fromLTRB(20, 0, 196, 0),
                            child: Text('Upcoming Matches',
                                style: TextStyle(
                                    color: Colors.grey[800],
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20))),
                        SizedBox(
                          height: 10,
                        ),
                        //tata ipl
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => TATAIPL()),
                            );
                          },
                          child: Container(
                            width: 350,
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Container(
                                        padding:
                                        EdgeInsets.fromLTRB(10, 0, 0, 0),
                                        child: Text('TATA IPL',
                                            style: TextStyle(
                                                color: Colors.grey[800],
                                                // fontWeight: FontWeight.bold,
                                                fontSize: 12))),
                                    SizedBox(
                                      width: 239,
                                    ),
                                    Container(
                                      child: Icon(
                                        Icons.notifications_outlined,
                                        color: Colors.black,
                                        size: 25.0,
                                      ),
                                    ),
                                  ],
                                ),
                                Divider(),
                                Row(
                                  children: [
                                    Container(
                                        padding:
                                        EdgeInsets.fromLTRB(10, 0, 0, 0),
                                        child: Text('Lucknow',
                                            style: TextStyle(
                                                color: Colors.grey[800],
                                                // fontWeight: FontWeight.bold,
                                                fontSize: 12))),
                                    SizedBox(
                                      width: 190,
                                    ),
                                    Container(
                                        child: Text('Delhi  Capitals',
                                            style: TextStyle(
                                                color: Colors.grey[800],
                                                // fontWeight: FontWeight.bold,
                                                fontSize: 12))),
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                      child: Container(
                                        child: Image.asset(
                                          "assets/images/lucknowd.png",
                                          height: 30,
                                          width: 30,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                        child: Text('LKN',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 12))),
                                    SizedBox(
                                      width: 50,
                                    ),
                                    Container(
                                      child: new Text(
                                        ' 20h 52m',
                                        style: TextStyle(
                                            color: Colors.redAccent,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 90,
                                    ),
                                    Container(
                                        child: Text('DC',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 12))),
                                    Container(
                                      padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                      child: Container(
                                        child: Image.asset(
                                          "assets/images/lucknowd.png",
                                          height: 30,
                                          width: 30,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  color: Colors.white60,
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Container(
                                        alignment: Alignment.center,
                                        width: 50,
                                        height: 20,
                                        margin: EdgeInsets.all(1),
                                        padding: EdgeInsets.all(2),
                                        child: Text(
                                          'MEGA',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 12),
                                        ),
                                        decoration: BoxDecoration(
                                            color: Colors.greenAccent[100],
                                            border: Border(
                                                bottom: BorderSide(
                                                  color: Colors.greenAccent,
                                                  width: 1,
                                                ))),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Container(
                                        child: new Text(
                                          '₹35 Crore',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 11),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 180,
                                      ),
                                      Container(
                                        child: Icon(
                                          Icons.wallet_travel_outlined,
                                          color: Colors.black,
                                          size: 20.0,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
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
                            height: 130,
                          ),
                        ),

                        //2

                        SizedBox(
                          height: 30,
                        ),
                        Container(
                          width: 350,
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                      padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                      child: Text('TATA IPL',
                                          style: TextStyle(
                                              color: Colors.grey[800],
                                              // fontWeight: FontWeight.bold,
                                              fontSize: 12))),
                                  SizedBox(
                                    width: 239,
                                  ),
                                  Container(
                                    child: Icon(
                                      Icons.notifications_outlined,
                                      color: Colors.black,
                                      size: 25.0,
                                    ),
                                  ),
                                ],
                              ),
                              Divider(),
                              Row(
                                children: [
                                  Container(
                                      padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                      child: Text('Lucknow',
                                          style: TextStyle(
                                              color: Colors.grey[800],
                                              // fontWeight: FontWeight.bold,
                                              fontSize: 12))),
                                  SizedBox(
                                    width: 190,
                                  ),
                                  Container(
                                      child: Text('Delhi  Capitals',
                                          style: TextStyle(
                                              color: Colors.grey[800],
                                              // fontWeight: FontWeight.bold,
                                              fontSize: 12))),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Container(
                                    padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                    child: Container(
                                      child: Image.asset(
                                        "assets/images/lucknowd.png",
                                        height: 30,
                                        width: 30,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                      child: Text('LKN',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 12))),
                                  SizedBox(
                                    width: 50,
                                  ),
                                  Container(
                                    child: new Text(
                                      ' 20h 52m',
                                      style: TextStyle(
                                          color: Colors.redAccent,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 90,
                                  ),
                                  Container(
                                      child: Text('DC',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 12))),
                                  Container(
                                    padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                    child: Container(
                                      child: Image.asset(
                                        "assets/images/lucknowd.png",
                                        height: 30,
                                        width: 30,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                color: Colors.white60,
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                      alignment: Alignment.center,
                                      width: 50,
                                      height: 20,
                                      margin: EdgeInsets.all(1),
                                      padding: EdgeInsets.all(2),
                                      child: Text(
                                        'MEGA',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12),
                                      ),
                                      decoration: BoxDecoration(
                                          color: Colors.greenAccent[100],
                                          border: Border(
                                              bottom: BorderSide(
                                                color: Colors.greenAccent,
                                                width: 1,
                                              ))),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                      child: new Text(
                                        '₹35 Crore',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 11),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 180,
                                    ),
                                    Container(
                                      child: Icon(
                                        Icons.wallet_travel_outlined,
                                        color: Colors.black,
                                        size: 20.0,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            //border corner radius
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                //color of shadow
                                spreadRadius: 5,
                                //spread radius
                                blurRadius: 7,
                                // blur radius
                                offset:
                                Offset(0, 2), // changes position of shadow
                              ),
                              //you can set more BoxShadow() here
                            ],
                          ),
                          height: 130,
                        ),
                        //2

                        SizedBox(
                          height: 30,
                        ),
                        //tata ipl
                        Container(
                          width: 350,
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                      padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                      child: Text('TATA IPL',
                                          style: TextStyle(
                                              color: Colors.grey[800],
                                              // fontWeight: FontWeight.bold,
                                              fontSize: 12))),
                                  SizedBox(
                                    width: 239,
                                  ),
                                  Container(
                                    child: Icon(
                                      Icons.notifications_outlined,
                                      color: Colors.black,
                                      size: 25.0,
                                    ),
                                  ),
                                ],
                              ),
                              Divider(),
                              Row(
                                children: [
                                  Container(
                                      padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                      child: Text('Lucknow',
                                          style: TextStyle(
                                              color: Colors.grey[800],
                                              // fontWeight: FontWeight.bold,
                                              fontSize: 12))),
                                  SizedBox(
                                    width: 190,
                                  ),
                                  Container(
                                      child: Text('Delhi  Capitals',
                                          style: TextStyle(
                                              color: Colors.grey[800],
                                              // fontWeight: FontWeight.bold,
                                              fontSize: 12))),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Container(
                                    padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                    child: Container(
                                      child: Image.asset(
                                        "assets/images/lucknowd.png",
                                        height: 30,
                                        width: 30,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                      child: Text('LKN',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 12))),
                                  SizedBox(
                                    width: 50,
                                  ),
                                  Container(
                                    child: new Text(
                                      ' 20h 52m',
                                      style: TextStyle(
                                          color: Colors.redAccent,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 90,
                                  ),
                                  Container(
                                      child: Text('DC',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 12))),
                                  Container(
                                    padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                    child: Container(
                                      child: Image.asset(
                                        "assets/images/lucknowd.png",
                                        height: 30,
                                        width: 30,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                color: Colors.white60,
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                      alignment: Alignment.center,
                                      width: 50,
                                      height: 20,
                                      margin: EdgeInsets.all(1),
                                      padding: EdgeInsets.all(2),
                                      child: Text(
                                        'MEGA',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12),
                                      ),
                                      decoration: BoxDecoration(
                                          color: Colors.greenAccent[100],
                                          border: Border(
                                              bottom: BorderSide(
                                                color: Colors.greenAccent,
                                                width: 1,
                                              ))),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                      child: new Text(
                                        '₹35 Crore',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 11),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 180,
                                    ),
                                    Container(
                                      child: Icon(
                                        Icons.wallet_travel_outlined,
                                        color: Colors.black,
                                        size: 20.0,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            //border corner radius
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                //color of shadow
                                spreadRadius: 5,
                                //spread radius
                                blurRadius: 7,
                                // blur radius
                                offset:
                                Offset(0, 2), // changes position of shadow
                              ),
                              //you can set more BoxShadow() here
                            ],
                          ),
                          height: 130,
                        ),
                        //end
                        SizedBox(
                          height: 30,
                        ),
                        //tata
                        Container(
                          //new
                          width: 350,
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    padding: EdgeInsets.fromLTRB(8, 3, 0, 0),
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
                                    padding: EdgeInsets.fromLTRB(8, 3, 0, 0),
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
                                    padding: EdgeInsets.fromLTRB(8, 3, 0, 0),
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
                                    padding: EdgeInsets.fromLTRB(8, 3, 0, 0),
                                    child: Text('₹59',
                                        style: TextStyle(
                                            color: Colors.greenAccent[400],
                                            decoration:
                                            TextDecoration.lineThrough,
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
                                    padding: EdgeInsets.fromLTRB(8, 3, 0, 0),
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
                                    padding: EdgeInsets.fromLTRB(8, 3, 0, 0),
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
                                    padding: EdgeInsets.fromLTRB(8, 3, 0, 0),
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
                                    padding: EdgeInsets.fromLTRB(0, 3, 0, 0),
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
                                    padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
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
                                offset:
                                Offset(0, 2), // changes position of shadow
                              ),
                              //you can set more BoxShadow() here
                            ],
                          ),
                          height: 150,
                        ),
                      ],
                    ),
                  ),
                  SingleChildScrollView(
                    child: Column(
                      children: [
                        CarouselSlider(
                          items: [
                            Container(
                              margin: EdgeInsets.all(6.0),
                              child: Image.asset(
                                "assets/images/dream.png",
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.all(6.0),
                              child: Image.asset(
                                "assets/images/dhoni.png",
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.all(6.0),
                              child: Image.asset(
                                "assets/images/dream11.png",
                              ),
                            ),
                          ],
                          options: CarouselOptions(
                            height: 100.0,
                            enlargeCenterPage: true,
                            autoPlay: true,
                            aspectRatio: 16 / 9,
                            autoPlayCurve: Curves.fastOutSlowIn,
                            enableInfiniteScroll: true,
                            autoPlayAnimationDuration:
                            Duration(milliseconds: 800),
                            viewportFraction: 0.8,
                          ),
                        ),
                        Container(
                            padding: EdgeInsets.fromLTRB(20, 0, 196, 0),
                            child: Text('Upcoming Matches',
                                style: TextStyle(
                                    color: Colors.grey[800],
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20))),
                        SizedBox(
                          height: 10,
                        ),
                        //tata ipl
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => TATAIPL()),
                            );
                          },
                          child: Container(
                            width: 350,
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Container(
                                        padding:
                                        EdgeInsets.fromLTRB(10, 0, 0, 0),
                                        child: Text('TATA IPL',
                                            style: TextStyle(
                                                color: Colors.grey[800],
                                                // fontWeight: FontWeight.bold,
                                                fontSize: 12))),
                                    SizedBox(
                                      width: 239,
                                    ),
                                    Container(
                                      child: Icon(
                                        Icons.notifications_outlined,
                                        color: Colors.black,
                                        size: 25.0,
                                      ),
                                    ),
                                  ],
                                ),
                                Divider(),
                                Row(
                                  children: [
                                    Container(
                                        padding:
                                        EdgeInsets.fromLTRB(10, 0, 0, 0),
                                        child: Text('Lucknow',
                                            style: TextStyle(
                                                color: Colors.grey[800],
                                                // fontWeight: FontWeight.bold,
                                                fontSize: 12))),
                                    SizedBox(
                                      width: 190,
                                    ),
                                    Container(
                                        child: Text('Delhi  Capitals',
                                            style: TextStyle(
                                                color: Colors.grey[800],
                                                // fontWeight: FontWeight.bold,
                                                fontSize: 12))),
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                      child: Container(
                                        child: Image.asset(
                                          "assets/images/lucknowd.png",
                                          height: 30,
                                          width: 30,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                        child: Text('LKN',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 12))),
                                    SizedBox(
                                      width: 50,
                                    ),
                                    Container(
                                      child: new Text(
                                        ' 20h 52m',
                                        style: TextStyle(
                                            color: Colors.redAccent,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 90,
                                    ),
                                    Container(
                                        child: Text('DC',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 12))),
                                    Container(
                                      padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                      child: Container(
                                        child: Image.asset(
                                          "assets/images/lucknowd.png",
                                          height: 30,
                                          width: 30,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  color: Colors.white60,
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Container(
                                        alignment: Alignment.center,
                                        width: 50,
                                        height: 20,
                                        margin: EdgeInsets.all(1),
                                        padding: EdgeInsets.all(2),
                                        child: Text(
                                          'MEGA',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 12),
                                        ),
                                        decoration: BoxDecoration(
                                            color: Colors.greenAccent[100],
                                            border: Border(
                                                bottom: BorderSide(
                                                  color: Colors.greenAccent,
                                                  width: 1,
                                                ))),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Container(
                                        child: new Text(
                                          '₹35 Crore',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 11),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 180,
                                      ),
                                      Container(
                                        child: Icon(
                                          Icons.wallet_travel_outlined,
                                          color: Colors.black,
                                          size: 20.0,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
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
                            height: 130,
                          ),
                        ),

                        //2

                        SizedBox(
                          height: 30,
                        ),
                        Container(
                          width: 350,
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                      padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                      child: Text('TATA IPL',
                                          style: TextStyle(
                                              color: Colors.grey[800],
                                              // fontWeight: FontWeight.bold,
                                              fontSize: 12))),
                                  SizedBox(
                                    width: 239,
                                  ),
                                  Container(
                                    child: Icon(
                                      Icons.notifications_outlined,
                                      color: Colors.black,
                                      size: 25.0,
                                    ),
                                  ),
                                ],
                              ),
                              Divider(),
                              Row(
                                children: [
                                  Container(
                                      padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                      child: Text('Lucknow',
                                          style: TextStyle(
                                              color: Colors.grey[800],
                                              // fontWeight: FontWeight.bold,
                                              fontSize: 12))),
                                  SizedBox(
                                    width: 190,
                                  ),
                                  Container(
                                      child: Text('Delhi  Capitals',
                                          style: TextStyle(
                                              color: Colors.grey[800],
                                              // fontWeight: FontWeight.bold,
                                              fontSize: 12))),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Container(
                                    padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                    child: Container(
                                      child: Image.asset(
                                        "assets/images/lucknowd.png",
                                        height: 30,
                                        width: 30,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                      child: Text('LKN',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 12))),
                                  SizedBox(
                                    width: 50,
                                  ),
                                  Container(
                                    child: new Text(
                                      ' 20h 52m',
                                      style: TextStyle(
                                          color: Colors.redAccent,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 90,
                                  ),
                                  Container(
                                      child: Text('DC',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 12))),
                                  Container(
                                    padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                    child: Container(
                                      child: Image.asset(
                                        "assets/images/lucknowd.png",
                                        height: 30,
                                        width: 30,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                color: Colors.white60,
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                      alignment: Alignment.center,
                                      width: 50,
                                      height: 20,
                                      margin: EdgeInsets.all(1),
                                      padding: EdgeInsets.all(2),
                                      child: Text(
                                        'MEGA',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12),
                                      ),
                                      decoration: BoxDecoration(
                                          color: Colors.greenAccent[100],
                                          border: Border(
                                              bottom: BorderSide(
                                                color: Colors.greenAccent,
                                                width: 1,
                                              ))),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                      child: new Text(
                                        '₹35 Crore',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 11),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 180,
                                    ),
                                    Container(
                                      child: Icon(
                                        Icons.wallet_travel_outlined,
                                        color: Colors.black,
                                        size: 20.0,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            //border corner radius
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                //color of shadow
                                spreadRadius: 5,
                                //spread radius
                                blurRadius: 7,
                                // blur radius
                                offset:
                                Offset(0, 2), // changes position of shadow
                              ),
                              //you can set more BoxShadow() here
                            ],
                          ),
                          height: 130,
                        ),
                        //2

                        SizedBox(
                          height: 30,
                        ),
                        //tata ipl
                        Container(
                          width: 350,
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                      padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                      child: Text('TATA IPL',
                                          style: TextStyle(
                                              color: Colors.grey[800],
                                              // fontWeight: FontWeight.bold,
                                              fontSize: 12))),
                                  SizedBox(
                                    width: 239,
                                  ),
                                  Container(
                                    child: Icon(
                                      Icons.notifications_outlined,
                                      color: Colors.black,
                                      size: 25.0,
                                    ),
                                  ),
                                ],
                              ),
                              Divider(),
                              Row(
                                children: [
                                  Container(
                                      padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                      child: Text('Lucknow',
                                          style: TextStyle(
                                              color: Colors.grey[800],
                                              // fontWeight: FontWeight.bold,
                                              fontSize: 12))),
                                  SizedBox(
                                    width: 190,
                                  ),
                                  Container(
                                      child: Text('Delhi  Capitals',
                                          style: TextStyle(
                                              color: Colors.grey[800],
                                              // fontWeight: FontWeight.bold,
                                              fontSize: 12))),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Container(
                                    padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                    child: Container(
                                      child: Image.asset(
                                        "assets/images/lucknowd.png",
                                        height: 30,
                                        width: 30,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                      child: Text('LKN',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 12))),
                                  SizedBox(
                                    width: 50,
                                  ),
                                  Container(
                                    child: new Text(
                                      ' 20h 52m',
                                      style: TextStyle(
                                          color: Colors.redAccent,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 90,
                                  ),
                                  Container(
                                      child: Text('DC',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 12))),
                                  Container(
                                    padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                    child: Container(
                                      child: Image.asset(
                                        "assets/images/lucknowd.png",
                                        height: 30,
                                        width: 30,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                color: Colors.white60,
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                      alignment: Alignment.center,
                                      width: 50,
                                      height: 20,
                                      margin: EdgeInsets.all(1),
                                      padding: EdgeInsets.all(2),
                                      child: Text(
                                        'MEGA',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12),
                                      ),
                                      decoration: BoxDecoration(
                                          color: Colors.greenAccent[100],
                                          border: Border(
                                              bottom: BorderSide(
                                                color: Colors.greenAccent,
                                                width: 1,
                                              ))),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                      child: new Text(
                                        '₹35 Crore',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 11),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 180,
                                    ),
                                    Container(
                                      child: Icon(
                                        Icons.wallet_travel_outlined,
                                        color: Colors.black,
                                        size: 20.0,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            //border corner radius
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                //color of shadow
                                spreadRadius: 5,
                                //spread radius
                                blurRadius: 7,
                                // blur radius
                                offset:
                                Offset(0, 2), // changes position of shadow
                              ),
                              //you can set more BoxShadow() here
                            ],
                          ),
                          height: 130,
                        ),
                        //end
                        SizedBox(
                          height: 30,
                        ),
                        //tata
                        Container(
                          //new
                          width: 350,
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    padding: EdgeInsets.fromLTRB(8, 3, 0, 0),
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
                                    padding: EdgeInsets.fromLTRB(8, 3, 0, 0),
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
                                    padding: EdgeInsets.fromLTRB(8, 3, 0, 0),
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
                                    padding: EdgeInsets.fromLTRB(8, 3, 0, 0),
                                    child: Text('₹59',
                                        style: TextStyle(
                                            color: Colors.greenAccent[400],
                                            decoration:
                                            TextDecoration.lineThrough,
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
                                    padding: EdgeInsets.fromLTRB(8, 3, 0, 0),
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
                                    padding: EdgeInsets.fromLTRB(8, 3, 0, 0),
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
                                    padding: EdgeInsets.fromLTRB(8, 3, 0, 0),
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
                                    padding: EdgeInsets.fromLTRB(0, 3, 0, 0),
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
                                    padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
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
                                offset:
                                Offset(0, 2), // changes position of shadow
                              ),
                              //you can set more BoxShadow() here
                            ],
                          ),
                          height: 150,
                        ),
                      ],
                    ),
                  ),
                  SingleChildScrollView(
                    child: Column(
                      children: [
                        CarouselSlider(
                          items: [
                            Container(
                              margin: EdgeInsets.all(6.0),
                              child: Image.asset(
                                "assets/images/dream.png",
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.all(6.0),
                              child: Image.asset(
                                "assets/images/dhoni.png",
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.all(6.0),
                              child: Image.asset(
                                "assets/images/dream11.png",
                              ),
                            ),
                          ],
                          options: CarouselOptions(
                            height: 100.0,
                            enlargeCenterPage: true,
                            autoPlay: true,
                            aspectRatio: 16 / 9,
                            autoPlayCurve: Curves.fastOutSlowIn,
                            enableInfiniteScroll: true,
                            autoPlayAnimationDuration:
                            Duration(milliseconds: 800),
                            viewportFraction: 0.8,
                          ),
                        ),
                        Container(
                            padding: EdgeInsets.fromLTRB(20, 0, 196, 0),
                            child: Text('Upcoming Matches',
                                style: TextStyle(
                                    color: Colors.grey[800],
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20))),
                        SizedBox(
                          height: 10,
                        ),
                        //tata ipl
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => TATAIPL()),
                            );
                          },
                          child: Container(
                            width: 350,
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Container(
                                        padding:
                                        EdgeInsets.fromLTRB(10, 0, 0, 0),
                                        child: Text('TATA IPL',
                                            style: TextStyle(
                                                color: Colors.grey[800],
                                                // fontWeight: FontWeight.bold,
                                                fontSize: 12))),
                                    SizedBox(
                                      width: 239,
                                    ),
                                    Container(
                                      child: Icon(
                                        Icons.notifications_outlined,
                                        color: Colors.black,
                                        size: 25.0,
                                      ),
                                    ),
                                  ],
                                ),
                                Divider(),
                                Row(
                                  children: [
                                    Container(
                                        padding:
                                        EdgeInsets.fromLTRB(10, 0, 0, 0),
                                        child: Text('Lucknow',
                                            style: TextStyle(
                                                color: Colors.grey[800],
                                                // fontWeight: FontWeight.bold,
                                                fontSize: 12))),
                                    SizedBox(
                                      width: 190,
                                    ),
                                    Container(
                                        child: Text('Delhi  Capitals',
                                            style: TextStyle(
                                                color: Colors.grey[800],
                                                // fontWeight: FontWeight.bold,
                                                fontSize: 12))),
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                      child: Container(
                                        child: Image.asset(
                                          "assets/images/lucknowd.png",
                                          height: 30,
                                          width: 30,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                        child: Text('LKN',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 12))),
                                    SizedBox(
                                      width: 50,
                                    ),
                                    Container(
                                      child: new Text(
                                        ' 20h 52m',
                                        style: TextStyle(
                                            color: Colors.redAccent,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 90,
                                    ),
                                    Container(
                                        child: Text('DC',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 12))),
                                    Container(
                                      padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                      child: Container(
                                        child: Image.asset(
                                          "assets/images/lucknowd.png",
                                          height: 30,
                                          width: 30,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  color: Colors.white60,
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Container(
                                        alignment: Alignment.center,
                                        width: 50,
                                        height: 20,
                                        margin: EdgeInsets.all(1),
                                        padding: EdgeInsets.all(2),
                                        child: Text(
                                          'MEGA',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 12),
                                        ),
                                        decoration: BoxDecoration(
                                            color: Colors.greenAccent[100],
                                            border: Border(
                                                bottom: BorderSide(
                                                  color: Colors.greenAccent,
                                                  width: 1,
                                                ))),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Container(
                                        child: new Text(
                                          '₹35 Crore',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 11),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 180,
                                      ),
                                      Container(
                                        child: Icon(
                                          Icons.wallet_travel_outlined,
                                          color: Colors.black,
                                          size: 20.0,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
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
                            height: 130,
                          ),
                        ),

                        //2

                        SizedBox(
                          height: 30,
                        ),
                        Container(
                          width: 350,
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                      padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                      child: Text('TATA IPL',
                                          style: TextStyle(
                                              color: Colors.grey[800],
                                              // fontWeight: FontWeight.bold,
                                              fontSize: 12))),
                                  SizedBox(
                                    width: 239,
                                  ),
                                  Container(
                                    child: Icon(
                                      Icons.notifications_outlined,
                                      color: Colors.black,
                                      size: 25.0,
                                    ),
                                  ),
                                ],
                              ),
                              Divider(),
                              Row(
                                children: [
                                  Container(
                                      padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                      child: Text('Lucknow',
                                          style: TextStyle(
                                              color: Colors.grey[800],
                                              // fontWeight: FontWeight.bold,
                                              fontSize: 12))),
                                  SizedBox(
                                    width: 190,
                                  ),
                                  Container(
                                      child: Text('Delhi  Capitals',
                                          style: TextStyle(
                                              color: Colors.grey[800],
                                              // fontWeight: FontWeight.bold,
                                              fontSize: 12))),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Container(
                                    padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                    child: Container(
                                      child: Image.asset(
                                        "assets/images/lucknowd.png",
                                        height: 30,
                                        width: 30,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                      child: Text('LKN',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 12))),
                                  SizedBox(
                                    width: 50,
                                  ),
                                  Container(
                                    child: new Text(
                                      ' 20h 52m',
                                      style: TextStyle(
                                          color: Colors.redAccent,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 90,
                                  ),
                                  Container(
                                      child: Text('DC',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 12))),
                                  Container(
                                    padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                    child: Container(
                                      child: Image.asset(
                                        "assets/images/lucknowd.png",
                                        height: 30,
                                        width: 30,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                color: Colors.white60,
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                      alignment: Alignment.center,
                                      width: 50,
                                      height: 20,
                                      margin: EdgeInsets.all(1),
                                      padding: EdgeInsets.all(2),
                                      child: Text(
                                        'MEGA',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12),
                                      ),
                                      decoration: BoxDecoration(
                                          color: Colors.greenAccent[100],
                                          border: Border(
                                              bottom: BorderSide(
                                                color: Colors.greenAccent,
                                                width: 1,
                                              ))),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                      child: new Text(
                                        '₹35 Crore',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 11),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 180,
                                    ),
                                    Container(
                                      child: Icon(
                                        Icons.wallet_travel_outlined,
                                        color: Colors.black,
                                        size: 20.0,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            //border corner radius
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                //color of shadow
                                spreadRadius: 5,
                                //spread radius
                                blurRadius: 7,
                                // blur radius
                                offset:
                                Offset(0, 2), // changes position of shadow
                              ),
                              //you can set more BoxShadow() here
                            ],
                          ),
                          height: 130,
                        ),
                        //2

                        SizedBox(
                          height: 30,
                        ),
                        //tata ipl
                        Container(
                          width: 350,
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                      padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                      child: Text('TATA IPL',
                                          style: TextStyle(
                                              color: Colors.grey[800],
                                              // fontWeight: FontWeight.bold,
                                              fontSize: 12))),
                                  SizedBox(
                                    width: 239,
                                  ),
                                  Container(
                                    child: Icon(
                                      Icons.notifications_outlined,
                                      color: Colors.black,
                                      size: 25.0,
                                    ),
                                  ),
                                ],
                              ),
                              Divider(),
                              Row(
                                children: [
                                  Container(
                                      padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                      child: Text('Lucknow',
                                          style: TextStyle(
                                              color: Colors.grey[800],
                                              // fontWeight: FontWeight.bold,
                                              fontSize: 12))),
                                  SizedBox(
                                    width: 190,
                                  ),
                                  Container(
                                      child: Text('Delhi  Capitals',
                                          style: TextStyle(
                                              color: Colors.grey[800],
                                              // fontWeight: FontWeight.bold,
                                              fontSize: 12))),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Container(
                                    padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                    child: Container(
                                      child: Image.asset(
                                        "assets/images/lucknowd.png",
                                        height: 30,
                                        width: 30,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                      child: Text('LKN',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 12))),
                                  SizedBox(
                                    width: 50,
                                  ),
                                  Container(
                                    child: new Text(
                                      ' 20h 52m',
                                      style: TextStyle(
                                          color: Colors.redAccent,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 90,
                                  ),
                                  Container(
                                      child: Text('DC',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 12))),
                                  Container(
                                    padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                    child: Container(
                                      child: Image.asset(
                                        "assets/images/lucknowd.png",
                                        height: 30,
                                        width: 30,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                color: Colors.white60,
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                      alignment: Alignment.center,
                                      width: 50,
                                      height: 20,
                                      margin: EdgeInsets.all(1),
                                      padding: EdgeInsets.all(2),
                                      child: Text(
                                        'MEGA',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12),
                                      ),
                                      decoration: BoxDecoration(
                                          color: Colors.greenAccent[100],
                                          border: Border(
                                              bottom: BorderSide(
                                                color: Colors.greenAccent,
                                                width: 1,
                                              ))),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                      child: new Text(
                                        '₹35 Crore',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 11),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 180,
                                    ),
                                    Container(
                                      child: Icon(
                                        Icons.wallet_travel_outlined,
                                        color: Colors.black,
                                        size: 20.0,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            //border corner radius
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                //color of shadow
                                spreadRadius: 5,
                                //spread radius
                                blurRadius: 7,
                                // blur radius
                                offset:
                                Offset(0, 2), // changes position of shadow
                              ),
                              //you can set more BoxShadow() here
                            ],
                          ),
                          height: 130,
                        ),
                        //end
                        SizedBox(
                          height: 30,
                        ),
                        //tata
                        Container(
                          //new
                          width: 350,
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    padding: EdgeInsets.fromLTRB(8, 3, 0, 0),
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
                                    padding: EdgeInsets.fromLTRB(8, 3, 0, 0),
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
                                    padding: EdgeInsets.fromLTRB(8, 3, 0, 0),
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
                                    padding: EdgeInsets.fromLTRB(8, 3, 0, 0),
                                    child: Text('₹59',
                                        style: TextStyle(
                                            color: Colors.greenAccent[400],
                                            decoration:
                                            TextDecoration.lineThrough,
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
                                    padding: EdgeInsets.fromLTRB(8, 3, 0, 0),
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
                                    padding: EdgeInsets.fromLTRB(8, 3, 0, 0),
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
                                    padding: EdgeInsets.fromLTRB(8, 3, 0, 0),
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
                                    padding: EdgeInsets.fromLTRB(0, 3, 0, 0),
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
                                    padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
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
                                offset:
                                Offset(0, 2), // changes position of shadow
                              ),
                              //you can set more BoxShadow() here
                            ],
                          ),
                          height: 150,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
