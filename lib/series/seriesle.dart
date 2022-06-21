import 'package:dream/login/loginpage.dart';
import 'package:dream/main.dart';
import 'package:flutter/material.dart';

void main() => runApp(Seriesleader());

class Seriesleader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: seriesll(),
    );
  }
}

class seriesll extends StatefulWidget {
  const seriesll({Key? key}) : super(key: key);

  @override
  State<seriesll> createState() => _seriesllState();
}

class _seriesllState extends State<seriesll> {
  var personList = <Person>[];

  @override
  void initState() {
    personList.add(Person("Ram", "123456799"));
    personList.add(Person("Ram2", "123456799"));
    personList.add(Person("Ram3", "123456799"));
    personList.add(Person("Ram", "123456799"));
    personList.add(Person("Ram", "123456799"));
    personList.add(Person("Ram", "123456799"));



    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0.0,
        title: Text("Series Leaderboard"),
        leading: IconButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (_) => MyApp()));
          },
          icon: Icon(Icons.keyboard_backspace),
        ),
      ),
      body: DefaultTabController(
        length: 2,
        child: Column(
          children: <Widget>[
            Container(
              constraints: BoxConstraints.expand(height: 40),
              child: TabBar(tabs: [
                Tab(
                    child: new Text(
                  'Series',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                )),
                Tab(
                    child: new Text(
                  'Weekly',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                )),
              ]),
            ),
            Expanded(
              child: TabBarView(children: [
                Column(
                  children: [
                    Container(
                      padding: EdgeInsets.fromLTRB(5, 9, 0, 0),
                      child: Text(' Select Series: India Senior Womens T-20',
                          style: TextStyle(
                              color: Colors.black,
                              //  fontWeight: FontWeight.bold,
                              fontSize: 13)),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 29,
                      decoration: BoxDecoration(
                        color: Colors.yellowAccent,
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
                      padding: EdgeInsets.fromLTRB(5, 9, 0, 0),
                      child: Text(
                          ' TEAM                                                                                           RANK',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 13)),
                    ),
                    Expanded(
                        // child: ListView(),
                        child: ListView.builder(
                            itemCount: personList.length,
                            itemBuilder: (BuildContext context, int position) {
                              return Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  width: double.infinity,
                                  color: Colors.blue,
                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Row(
                                      children: [
                                        CircleAvatar(
                                          radius: 16.0,
                                          child: ClipRRect(
                                            child: Image.asset('assets/images/$position.png'),
                                            borderRadius: BorderRadius.circular(50.0),
                                          ),
                                        ),
                                       // Image.asset('assets/images/$position.png'),
                                        Text("${personList[position].name}"),
                                        Text("${personList[position].phone}"),
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            })),
                  ],
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

class Person {
  String name = '';
  String phone = '';

  Person(this.name, this.phone);
}
