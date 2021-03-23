import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:foodelivery/Screens/IntroScreen.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Basic ",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.orange),
      home: _SplashScreen(),
    );
  }
}


/*
class MyHome extends StatelessWidget {
  @override
  _Login createState() => _SplashScreen();
}
*/

class _SplashScreen extends StatefulWidget {


  @override
  __SplashScreenState createState() => __SplashScreenState();
}

class __SplashScreenState extends State<_SplashScreen> {

  @override
  void initState() {
    super.initState();
    Timer(
        Duration(
          seconds: 5,
        ),() => Navigator.pushReplacement(context, MaterialPageRoute(
        builder: (context)  => IntroScreen()
    ))
    );
  }


  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(
                  "assets/images/spalshbg.jpg"
              )
          )
      ),
      child: Center(
        child: Expanded(
          flex: 2,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height/4
                ),
                child: CircleAvatar(
                  radius:MediaQuery.of(context).size.width/4,
                  backgroundColor: Colors.white,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image(
                        fit: BoxFit.fitWidth,
                        height: 70,
                        width: 200,
                        image: AssetImage(
                            "assets/images/logo.png"
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                            bottom: 24.0
                        ),
                        child: Text("Food for Everyne",
                          style: TextStyle(
                              fontSize: 10.0
                          ),
                        ),
                      ),
                      Container(
                        height: 20,
                        width: 20,
                        child: CircularProgressIndicator(
                          strokeWidth: 2.0,
                        ),
                      )
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


/*class _Login extends State<MyHome> {
  var myEmailController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
   String _email="";
   String _pass="";

  TextField _textField() {
    return TextField(
      controller: myEmailController,
      decoration: InputDecoration(
          border: OutlineInputBorder(),
          hintText: "E-mail",
          labelText: "Enter The E-mail",
          prefixIcon: Icon(Icons.mail_rounded)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Basic Flutter",
          ),
        ),
        body: Container(
          child: Center(
            child: Center(
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image(
                      width: 100,
                      height: 100,
                      image: AssetImage("assets/images/india.png"),
                    ),
                    Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          onChanged: (String _eail) => setState(() => _email=_eail),
                          validator: (value) {
                            if (value.isEmpty) {
                              return "You Can't have empty name!!!";
                            }
                          },
                          decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: "E-mail",
                              labelText: "Enter The E-mail",
                              prefixIcon: Icon(Icons.mail_rounded)),
                        )),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        onChanged: (String _pas) => setState(() => _pass=_pas),
                        obscureText: true,
                        validator: (value) {
                          if (value.isEmpty) {
                            return "You Can't have empty Password!!!";
                          }
                        },
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: 'Password',
                            labelText: 'Enter The Password ',
                            prefixIcon: Icon(Icons.remove_red_eye_outlined),
                            helperText: 'Password Must Consist @&^</>123'),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 32.0),
                      child: RaisedButton(
                        color: Colors.blue,
                        textColor: Colors.white,
                        onPressed: () {
                          _formKey.currentState.save();
                        _formKey.currentState.validate()?
                         print('next'):print("fghfgfjh");
                          Navigator.push(context, MaterialPageRoute(
                              builder: (context) => HomeScreen()
                          ));

                        },
                        child: Container(
                          child: Text(
                            'Login',
                            style: TextStyle(),
                          ),
                        ),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16.0),
                            side: BorderSide(color: Colors.blue)),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
        drawer: Drawer(
          child: Container(
            width: 100,
            height: 100,
            child: ListView(
              children: [
                UserAccountsDrawerHeader(
                  currentAccountPicture: Image(
                    width: 100,
                    height: 100,
                    image: AssetImage("assets/images/india.png"),
                  ),
                  accountName: Text("Rakesh"),
                  accountEmail: Text("Rakesh.gowda@empulseglobal.com"),
                ),
                ListTile(
                  leading: Icon(
                    Icons.mail_rounded
                  ),
                  title: Text(
                    "Contact Us "
                  ),
                ),
                ListTile(
                  leading: Icon(
                    Icons.info_outline
                  ),
                  title: Text(
                    "About Us "
                  ),
                ),
                ListTile(
                  leading: Icon(
                      Icons.login_outlined
                  ),
                  title: Text(
                      "Log-Out"
                  ),
                )

              ],

            ),
          ),
        ));
  }
}*/
