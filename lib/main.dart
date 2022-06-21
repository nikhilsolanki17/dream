// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(MyApp());
// }
// class MyApp extends StatelessWidget {
//
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: MyTextPage(),
//     );
//
//   }
// }
// class MyTextPage extends StatelessWidget {
//   bool chnagebutton = false;
//   final _formKey = GlobalKey();
//
//   movetToHome(BuildContext){}
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Material(
//       color: Colors.white,
// // scroll
//       child: SingleChildScrollView(
//           child: Form(
//             key: _formKey,
//             child: Column(children: [
//               Image.asset(
//                 "assets/images/login_page.png",
//                 fit: BoxFit.cover,
//                 height: 250,
//               ),
//               // y image or welcome ke bich space de dega agr muge text bhi dena hoga to jitni height di usme text a jyga
//               SizedBox(
//                 height: 20.0,
//               ),
//               Text("welcome",
//                   style: TextStyle(
//                     fontSize: 24,
//                     fontWeight: FontWeight.bold,
//                   )),
//               // y image or welcome ke niche
//               SizedBox(
//                 height: 20.0,
//               ),
//
//               Padding(
//                 padding:
//                 const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
//                 child: SizedBox(
//                     child: Column(children: [
//                       TextFormField(
//                         decoration: InputDecoration(
//                           hintText: "Enter username",
//                           labelText: "Username",
//                         ),
//                       ),
//                       TextFormField(
//                         obscureText: true,
//                         decoration: InputDecoration(
//                           hintText: "Enter password",
//                           labelText: "password",
//                         ),
//                       ),
//                       SizedBox(
//                         height: 18.0,
//                       ),
//                       InkWell(
//                         // onTap: () {
//                         //   Navigator.pushNamed(context, MyRoutes.homeRoute);
//                         // },
//                           child: AnimatedContainer(
//                             duration: Duration(seconds: 1),
//                             width: 140,
//                             height: 35,
//                             alignment: Alignment.center,
//                             child: Text(
//                               "Login",
//                               style: TextStyle(
//                                   color: Colors.white,
//                                   fontWeight: FontWeight.bold,
//                                   fontSize: 18),
//                             ),
//                             decoration: BoxDecoration(
//                                 color: Colors.deepPurple,
//                                 borderRadius: BorderRadius.circular(8)),
//                           ))
//                       //  ElevatedButton(
//                       //  child: Text("login"),
//                       //   style: TextButton.styleFrom(minimumSize: Size(150, 40)),
//                       //  onPressed: () {
//                       //    Navigator.pushNamed(context, MyRoutes.homeRoute);
//                       //   },
//                       //  )
//                     ])),
//               )
//             ]),
//           )),
//     );
//   }
// }
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
// // import 'package:flutter/cupertino.dart';
// // import 'package:flutter/material.dart';
// //
// // void main() {
// //   runApp(const MyApp());
// // }
// //
// // class MyApp extends StatelessWidget {
// //   const MyApp({Key? key}) : super(key: key);
// //
// //   // This widget is the root of your application.
// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //         title: 'Flutter Demo',
// //         home: Scaffold(
// //           appBar: AppBar(
// //             title: Text('My App'),
// //           ),
// //           body: Home(),
// //           floatingActionButton: FloatingActionButton(
// //             onPressed: () {},
// //             child: Icon(Icons.filter_alt_outlined),
// //           ),
// //         ));
// //   }
// // }
// //
// // class Home extends StatefulWidget {
// //   const Home({Key? key}) : super(key: key);
// //
// //   @override
// //   State<Home> createState() => _HomeState();
// // }
// //
// // class _HomeState extends State<Home> {
// //
// //   var personList = <Person>[];
// //
// //   @override
// //   //array
// //   void initState() {
// //     personList.add(Person("Ram","123456799"));
// //     personList.add(Person("Ram2","123456799"));
// //     personList.add(Person("Ram3","123456799"));
// //     personList.add(Person("Ram","123456799"));
// //     personList.add(Person("Ram","123456799"));
// //     personList.add(Person("Ram","123456799"));
// //     personList.add(Person("Ram","123456799"));
// //     personList.add(Person("Ram","123456799"));
// //     personList.add(Person("Ram","123456799"));
// //     personList.add(Person("Ram","123456799"));
// //     personList.add(Person("Ram","123456799"));
// //     personList.add(Person("Ram","123456799"));
// //     personList.add(Person("Ram","123456799"));
// //     personList.add(Person("Ram","123456799"));
// //     personList.add(Person("Ram","123456799"));
// //     personList.add(Person("Ram","123456799"));
// //     personList.add(Person("Ram","123456799"));
// //     super.initState();
// //   }
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return Container(
// //       // child: ListView(),
// //         child: ListView.builder(
// //             itemCount: personList.length,
// //             itemBuilder: (BuildContext context, int position){
// //               return Padding(
// //                 padding: const EdgeInsets.all(8.0),
// //                 child: Container(
// //                   width: double.infinity,
// //                   color: Colors.red,
// //                   child: Padding(
// //                     padding: const EdgeInsets.all(8.0),
// //                     child: Column(
// //                       children: [
// //                         Text("${personList[position].name}"),
// //                         Text("${personList[position].phone}"),
// //                       ],
// //                     ),
// //                   ),
// //                 ),
// //               );
// //             })
// //     );
// //   }
// //
// // }
// // //model class
// // class Person{
// //   String name = '';
// //   String phone = '';
// //
// //   Person(this.name, this.phone);
// //
// //
// // }
// // // OutlinedButton.icon(
// // // // <-- OutlinedButton
// // // onPressed: () {
// // // // adding some properties
// // // showModalBottomSheet(
// // // context: context,
// // //
// // // //background color for modal bottom screen
// // // backgroundColor: Colors.white,
// // // //elevates modal bottom screen
// // // elevation: 10,
// // // // gives rounded corner to modal bottom screen
// // // shape: RoundedRectangleBorder(
// // // borderRadius: BorderRadius.circular(0.0),
// // // ),
// // // builder: (BuildContext context) {
// // // return Container(
// // // height: 250,
// // // child: Column(
// // // children: [
// // // Container(
// // // padding: EdgeInsets.fromLTRB(0, 0, 330, 0),
// // // child: Text('SHORT BY',
// // // style: TextStyle(
// // // fontSize: 15,
// // // // fontWeight: FontWeight.bold,
// // // )),
// // // ),
// // // Divider(
// // // thickness: 3,
// // // ),
// // // Row(
// // // mainAxisAlignment:
// // // MainAxisAlignment.spaceEvenly,
// // // children: <Widget>[
// // // Container(
// // // padding: EdgeInsets.fromLTRB(0, 0, 110, 0),
// // // child: Text(
// // // "Popularity",
// // // style: TextStyle(
// // // color: Colors.black,
// // // fontSize: 18,
// // // fontWeight: FontWeight.bold),
// // // ),
// // // ),
// // // Radio(
// // // value: 1,
// // // groupValue: groupValue,
// // // onChanged: handleRadio,
// // // ),
// // // ],
// // // ),
// // // Row(
// // // mainAxisAlignment:
// // // MainAxisAlignment.spaceEvenly,
// // // children: <Widget>[
// // // // Radio(
// // // //   value: 1,
// // // //   groupValue: _value,
// // // //   onChanged: (value) {
// // // //     setState(() {
// // // //       _value = value;
// // // //     });
// // // //   },
// // // // ),
// // // Container(
// // // padding: EdgeInsets.fromLTRB(00, 0, 120, 0),
// // // child: Text(
// // // "Price--Low to Low",
// // // style: TextStyle(
// // // color: Colors.black,
// // // fontSize: 18,
// // // fontWeight: FontWeight.bold),
// // // ),
// // // ),
// // // Radio(
// // // value: 2,
// // // groupValue: groupValue,
// // // onChanged: handleRadio,
// // // ),
// // // ],
// // // ),
// // // Row(
// // // mainAxisAlignment:
// // // MainAxisAlignment.spaceEvenly,
// // // children: <Widget>[
// // // Container(
// // // padding: EdgeInsets.fromLTRB(0, 0, 120, 0),
// // // child: Text(
// // // "Price--Low to High",
// // // style: TextStyle(
// // // color: Colors.black,
// // // fontSize: 18,
// // // fontWeight: FontWeight.bold),
// // // ),
// // // ),
// // // Radio(
// // // value: 3,
// // // groupValue: groupValue,
// // // onChanged: handleRadio,
// // // ),
// // // ],
// // // ),
// // // Row(
// // // mainAxisAlignment:
// // // MainAxisAlignment.spaceEvenly,
// // // children: <Widget>[
// // // Container(
// // // padding: EdgeInsets.fromLTRB(0, 0, 180, 0),
// // // child: Text(
// // // "Newest First",
// // // style: TextStyle(
// // // color: Colors.black,
// // // fontSize: 18,
// // // fontWeight: FontWeight.bold),
// // // ),
// // // ),
// // // Radio(
// // // value: 3,
// // // groupValue: groupValue,
// // // onChanged: handleRadio,
// // // ),
// // // ],
// // // ),
// // // ],
// // // ));
// // // },
// // // );
// // // },
// // // icon: Icon(
// // // Icons.drag_indicator,
// // // color: Colors.black,
// // // size: 24.0,
// // // ),
// // // label: Text('short'),
// // // ),
import 'package:dream/login/loginpage.dart';
import 'package:dream/sol.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() => runApp(page());

class page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: pagelogin(),
    );
  }
}

class pagelogin extends StatefulWidget {
  const pagelogin({Key? key}) : super(key: key);

  @override
  State<pagelogin> createState() => _pageloginState();
}

class _pageloginState extends State<pagelogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[900],
      body: Column(

        children: <Widget>[
          SizedBox(
            height: 80,
          ),
          Container(
            margin: EdgeInsets.all(15.0),
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
                  offset: Offset(0, 2), // changes position of shadow
                ),
                //you can set more BoxShadow() here
              ],
            ),
            child: new TextField(
              // controller: Emailcontroller,
              // controller: this._emailController,
              decoration: new InputDecoration(
                  hintText: "name",
                  labelText: "User name",
                  labelStyle:
                  new TextStyle(color: const Color(0xFF424242))),
            ),
          ),
          Container(
            margin: EdgeInsets.all(15.0),
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
                  offset: Offset(0, 2), // changes position of shadow
                ),
                //you can set more BoxShadow() here
              ],
            ),
            child: new TextField(
              // controller: Emailcontroller,
              // controller: this._emailController,
              decoration: new InputDecoration(
                  hintText: ""
                      "Email",
                  labelText: "Email Address",
                  labelStyle:
                  new TextStyle(color: const Color(0xFF424242))),
            ),
          ),
          Container(
            margin: EdgeInsets.all(15.0),
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
                  offset: Offset(0, 2), // changes position of shadow
                ),
                //you can set more BoxShadow() here
              ],
            ),
            child: new TextField(
              // controller: Emailcontroller,
              // controller: this._emailController,
              decoration: new InputDecoration(
                  hintText: "Password",
                  labelText: "Password",
                  labelStyle:
                  new TextStyle(color: const Color(0xFF424242))),
            ),
          ),
          Container(
            margin: EdgeInsets.all(25),
            child: FlatButton(
              child: Text('LogIn', style: TextStyle(fontSize: 20.0),),
              color: Colors.black,
              textColor: Colors.white,
              onPressed: () {

                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyApp()),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
