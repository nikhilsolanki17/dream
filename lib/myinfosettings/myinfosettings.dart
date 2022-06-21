import 'package:dream/login/loginpage.dart';
import 'package:dream/main.dart';
import 'package:flutter/material.dart';
import 'package:toggle_switch/toggle_switch.dart';

void main() => runApp(Myinfoset());

class Myinfoset extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Settings(),
    );
  }
}

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  String _selectedGender = 'male';
  var namecontroller = TextEditingController();
  var Emailcontroller = TextEditingController();
  var Mobilecontroller = TextEditingController();
  var Addresscontroller = TextEditingController();
  var Citycontroller = TextEditingController();
  var Pincodecontroller = TextEditingController();
  var Statecontroller = TextEditingController();
  var Countrycontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0.0,
        title: Text("My Info & Settings"),
        leading: IconButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (_) => MyApp()));
          },
          icon: Icon(Icons.keyboard_backspace),
        ),
      ),
      body: SingleChildScrollView(
        child: Form(
          child: Column(
            children: <Widget>[
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
                  controller: namecontroller,
                  decoration: new InputDecoration(
                      hintText: "name",
                      labelText: "NAME",
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
                  controller: Emailcontroller,
                  // controller: this._emailController,
                  decoration: new InputDecoration(
                      hintText: "Enter your email",
                      labelText: "Email",
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
                  controller: Mobilecontroller,
                  // controller: this._emailController,
                  decoration: new InputDecoration(
                      hintText: "Mobile",
                      labelText: "Mobile number",
                      labelStyle:
                          new TextStyle(color: const Color(0xFF424242))),
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(0, 0, 290, 0),
                child: Text('Gender'),
              ),
              Container(
                child: Padding(
                    padding: const EdgeInsets.all(25),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('Please let us know your gender:'),
                        ListTile(
                          leading: Radio<String>(
                            value: 'male',
                            groupValue: _selectedGender,
                            onChanged: (value) {
                              setState(() {
                                _selectedGender = value!;
                              });
                            },
                          ),
                          title: const Text('Male'),
                        ),
                        ListTile(
                          leading: Radio<String>(
                            value: 'female',
                            groupValue: _selectedGender,
                            onChanged: (value) {
                              setState(() {
                                _selectedGender = value!;
                              });
                            },
                          ),
                          title: const Text('Female'),
                        ),
                        // ListTile(
                        //   leading: Radio<String>(
                        //     value: 'Others',
                        //     groupValue: _selectedGender,
                        //     onChanged: (value) {
                        //       setState(() {
                        //         _selectedGender = value!;
                        //       });
                        //     },
                        //   ),
                        //   title: const Text('Others'),
                        // ),
                        const SizedBox(height: 25),
                        Text(_selectedGender == 'male'
                            ? 'Hello gentlement!'
                            : 'Hi lady!')
                      ],
                    )),
              ),
              Divider(),
              Container(
                  padding: EdgeInsets.fromLTRB(0, 0, 290, 0),
                  child: Text('Privacy Settings')),
              Divider(),
              Row(
                children: [
                  Container(
                      padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
                      child: Text('Allow SMS notifications',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 15))),
                  SizedBox(
                    width: 100,
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
                    child: ToggleSwitch(
                      minWidth: 30.0,
                      minHeight: 20,
                      cornerRadius: 20.0,
                      activeBgColors: [
                        [Colors.green],
                        [Colors.green]
                      ],
                      activeFgColor: Colors.white,
                      inactiveBgColor: Colors.green[50],
                      inactiveFgColor: Colors.white,
                      initialLabelIndex: 1,
                      totalSwitches: 2,
                      labels: ['', ''],
                      radiusStyle: true,
                      onToggle: (index) {
                        print('switched to: $index');
                      },
                    ),
                  ),
                ],
              ),
              Divider(),
              Row(
                children: [
                  Container(
                      padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
                      child: Text('Make me Discoverable',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 15))),
                  SizedBox(
                    width: 110,
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
                    child: ToggleSwitch(
                      minWidth: 30.0,
                      minHeight: 20,
                      cornerRadius: 20.0,
                      activeBgColors: [
                        [Colors.green],
                        [Colors.green]
                      ],
                      activeFgColor: Colors.white,
                      inactiveBgColor: Colors.green[50],
                      inactiveFgColor: Colors.white,
                      initialLabelIndex: 1,
                      totalSwitches: 2,
                      labels: ['', ''],
                      radiusStyle: true,
                      onToggle: (index) {
                        print('switched to: $index');
                      },
                    ),
                  ),
                ],
              ),
              Container(
                  padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                  child: Text(
                      'Frinds can Find and follow you when they syns their phone Contect',
                      style: TextStyle(
                          color: Colors.grey,
                          // fontWeight: FontWeight.bold,
                          fontSize: 15))),
              Divider(),
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
                  controller: Addresscontroller,
                  // controller: this._emailController,
                  decoration: new InputDecoration(
                      hintText: "",
                      labelText: "Address",
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
                  controller: Citycontroller,
                  // controller: this._emailController,
                  decoration: new InputDecoration(
                      hintText: "",
                      labelText: "City",
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
                  controller: Pincodecontroller,
                  // controller: this._emailController,
                  decoration: new InputDecoration(
                      hintText: "",
                      labelText: "Pin Code",
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
                  controller: Statecontroller,
                  // controller: this._emailController,
                  decoration: new InputDecoration(
                      hintText: "",
                      labelText: "State",
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
                  controller: Countrycontroller,
                  // controller: this._emailController,
                  decoration: new InputDecoration(
                      hintText: "",
                      labelText: "Country",
                      labelStyle:
                          new TextStyle(color: const Color(0xFF424242))),
                ),
              ),
              Container(
                height: 100,
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
                      offset: Offset(0, 2), // changes position of shadow
                    ),
                    //you can set more BoxShadow() here
                  ],
                ),
                child: Container(
                  child: Row(
                    children: [
                      Container(
                        padding: EdgeInsets.fromLTRB(10, 00, 0, 70),
                        child: Icon(
                          Icons.logout,
                          color: Colors.black,
                          size: 20.0,
                        ),
                      ),
                      Container(
                          padding: EdgeInsets.fromLTRB(0, 00, 0, 70),
                          child: Text('LOGOUT',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16))),

                      ElevatedButton(
                        onPressed: () {
                          var name = namecontroller.value.text;
                          var Email = Emailcontroller.value.text;
                          var Mobile = Mobilecontroller.value.text;
                          var Address = Addresscontroller.value.text;
                          var City = Citycontroller.value.text;
                          var Pincode = Pincodecontroller.value.text;
                          var State = Statecontroller.value.text;
                          var Country = Countrycontroller.value.text;
                          print(
                              "$name $Email $Mobile $Address $City $Pincode $State $Country");
                        },
                        child: const Text('Log in '),
                      ),
                      // Container(
                      //   margin: EdgeInsets.all(25),
                      //   child: FlatButton(
                      //
                      //     child: Text(
                      //       'LogIn',
                      //       style: TextStyle(fontSize: 20.0),
                      //     ),
                      //     color: Colors.green,
                      //     textColor: Colors.white,
                      //     onPressed: () {},
                      //   ),
                      // ),
                      Container(
                          padding: EdgeInsets.fromLTRB(0, 00, 0, 70),
                          child: Text('STRATEGIC TIMEOUT',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16))),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
