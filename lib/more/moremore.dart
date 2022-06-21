import 'package:dream/login/loginpage.dart';
import 'package:dream/main.dart';
import 'package:flutter/material.dart';

void main() => runApp(More());

class More extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: moremore(),
    );
  }
}

class moremore extends StatefulWidget {
  const moremore({Key? key}) : super(key: key);

  @override
  State<moremore> createState() => _moremoreState();
}

class _moremoreState extends State<moremore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0.0,
        title: Text("More"),
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
            height: 9,
          ),
          Row(
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(9, 0, 0, 0),
                child: Icon(
                  Icons.event_note_outlined,
                  color: Colors.black,
                  size: 20.0,
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Container(
                  child: Text('Community Guidelines',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 14))),
              SizedBox(
                width: 160,
              ),
              Container(
                child: Icon(
                  Icons.keyboard_arrow_right_outlined,
                  color: Colors.black,
                  size: 40.0,
                ),
              ),
            ],
          ),
          Divider(),
          Row(
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(9, 0, 0, 0),
                child: Icon(
                  Icons.stay_current_landscape_sharp,
                  color: Colors.black,
                  size: 20.0,
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Container(
                  child: Text('Enter Contest Code',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 14))),
              SizedBox(
                width: 180,
              ),
              Container(
                child: Icon(
                  Icons.keyboard_arrow_right_outlined,
                  color: Colors.black,
                  size: 40.0,
                ),
              ),
            ],
          ),
          Divider(),
          Row(
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(9, 0, 0, 0),
                child: Icon(
                  Icons.videogame_asset,
                  color: Colors.black,
                  size: 20.0,
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Container(
                  child: Text('How To Play',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 14))),
              SizedBox(
                width: 230,
              ),
              Container(
                child: Icon(
                  Icons.keyboard_arrow_right_outlined,
                  color: Colors.black,
                  size: 40.0,
                ),
              ),
            ],
          ),
          Divider(),
          Row(
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(9, 0, 0, 0),
                child: Icon(
                  Icons.shopping_bag,
                  color: Colors.black,
                  size: 20.0,
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Container(
                  child: Text('Jobs',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 14))),
              SizedBox(
                width: 280,
              ),
              Container(
                child: Icon(
                  Icons.keyboard_arrow_right_outlined,
                  color: Colors.black,
                  size: 40.0,
                ),
              ),
            ],
          ),
          Divider(),
          Row(
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(9, 0, 0, 0),
                child: Icon(
                  Icons.wine_bar_rounded,
                  color: Colors.black,
                  size: 20.0,
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Container(
                  child: Text('About Us',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 14))),
              SizedBox(
                width: 250,
              ),
              Container(
                child: Icon(
                  Icons.keyboard_arrow_right_outlined,
                  color: Colors.black,
                  size: 40.0,
                ),
              ),
            ],
          ),
          Divider(),
          Row(
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(9, 0, 0, 0),
                child: Icon(
                  Icons.reduce_capacity_sharp,
                  color: Colors.black,
                  size: 20.0,
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Container(
                  child: Text('Responsible Play',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 14))),
              SizedBox(
                width: 195,
              ),
              Container(
                child: Icon(
                  Icons.keyboard_arrow_right_outlined,
                  color: Colors.black,
                  size: 40.0,
                ),
              ),
            ],
          ),
          Divider(),
          Row(
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(9, 0, 0, 0),
                child: Icon(
                  Icons.local_offer_outlined,
                  color: Colors.black,
                  size: 20.0,
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Container(
                  child: Text('Legality',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 14))),
              SizedBox(
                width: 260,
              ),
              Container(
                child: Icon(
                  Icons.keyboard_arrow_right_outlined,
                  color: Colors.black,
                  size: 40.0,
                ),
              ),
            ],
          ),
          Divider(),
          Row(
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(9, 0, 0, 0),
                child: Icon(
                  Icons.menu_book_rounded,
                  color: Colors.black,
                  size: 20.0,
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Container(
                  child: Text('Terms And Conditions',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 14))),
              SizedBox(
                width: 160,
              ),
              Container(
                child: Icon(
                  Icons.keyboard_arrow_right_outlined,
                  color: Colors.black,
                  size: 40.0,
                ),
              ),
            ],
          ),
          Divider(),
        ],
      ),
    );
  }
}
