import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodelivery/Screens/HomeScreen.dart';

class loginScreenSatatic extends StatefulWidget {
  @override
  _loginScreenSataticState createState() => _loginScreenSataticState();
}

class _loginScreenSataticState extends State<loginScreenSatatic> {
  var isLogin = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          Color.fromRGBO(242, 244, 244, 8.0),
          Color.fromRGBO(242, 244, 244, 8.0),
          Color.fromRGBO(242, 244, 244, 8.0),
          Color.fromRGBO(242, 244, 244, 8.0),
          Color.fromRGBO(242, 244, 244, 8.0),
        ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 16.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      /*mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.stretch,*/
                      children: [
                        Expanded(
                          flex: 1,
                          child: Center(
                            child: Container(
                              child: Image(
                                fit: BoxFit.cover,
                                width: MediaQuery.of(context).size.width/2,
                                height: MediaQuery.of(context).size.height/4,
                                image: AssetImage('assets/images/logo.png'),
                              ),
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 32.0,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                child: Column(
                                  children: [
                                    FlatButton(
                                      onPressed: () {
                                        setState(() {
                                          isLogin = true;
                                        });
                                      },
                                      child: isLogin == true
                                          ? (Text(
                                              'Login',
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  color: Colors.orange,
                                                  fontWeight: FontWeight.bold,
                                              ),
                                            ))
                                          : Text(
                                              'Login',
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                    ),
                                    Icon(Icons.login_rounded,
                                      color: Colors.black,
                                    )


                                  ],
                                ),
                              ),
                              Container(
                                child: Column(
                                  children: [
                                    FlatButton(
                                      onPressed: () {
                                        setState(() {
                                          isLogin = false;
                                        });
                                      },
                                      child: isLogin == false
                                          ? (Text(
                                              'Sign-Up',
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  color: Colors.orange,
                                                  fontWeight: FontWeight.bold),
                                            ))
                                          : Text(
                                              'Sign-Up',
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                    ),
                                    Icon(Icons.app_registration
                                    )

                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            FlatButton(
                              height: 1,
                              color: Colors.deepOrange, onPressed: () {  },
                              child: null,
                            ),
                            FlatButton(
                              height: 1,
                              color: Colors.deepOrange, onPressed: () {  },
                              child: null,
                            ),
                          ],
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(32.0),
                        bottomRight: Radius.circular(32.0),
                      ),
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  child: isLogin == true ? _LoginDesign() : _RegisterScreen(),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class _LoginDesign extends StatefulWidget {
  @override
  __LoginDesignState createState() => __LoginDesignState();
}

class __LoginDesignState extends State<_LoginDesign> {
  var hjkjk = true;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        height: MediaQuery.of(context).size.height/2,
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.only(top: 8),
        child: Expanded(
          flex: 1,
          child: Container(
            margin: EdgeInsets.only(left: 16, right: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 8.0,
                    right: 8.0,
                  ),
                  child: Container(
                      child: Column(
                    children: [
                      Container(
                          width: MediaQuery.of(context).size.width,
                          child: Text(
                            'Email address',
                          )),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8),
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintStyle: TextStyle(
                              fontSize: 8.0,
                            ),
                            // hintText: 'Enter The E-mail '
                          ),
                        ),
                      )
                    ],
                  )),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 8.0,
                    right: 8.0,
                  ),
                  child: Container(
                      child: Column(
                    children: [
                      Container(
                          width: MediaQuery.of(context).size.width,
                          child: Text('Password')),
                      TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                          hintStyle: TextStyle(fontSize: 14.0),
                          //hintText: 'Enter The Password '
                        ),
                      )
                    ],
                  )),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      margin: EdgeInsets.only(top: 16.0),
                      child: Column(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width,
                            child: Text(
                              'Forgot PassCode ?',
                              style: TextStyle(
                                  color: Colors.orange[900],
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16, right: 16),
                  child: Container(
                    margin: EdgeInsets.only(top: 64.0, bottom: 48.0),
                    width: MediaQuery.of(context).size.width,
                    height: 38,
                    child: RaisedButton(
                      onPressed: () {

                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomeScreen()));
                      },
                      child: Text(
                        'Login',
                        style: TextStyle(color: Colors.white, fontSize: 20.0),
                      ),
                      color: Colors.orange[900],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _RegisterScreen extends StatefulWidget {
  @override
  __RegisterScreenState createState() => __RegisterScreenState();
}

class __RegisterScreenState extends State<_RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        height: MediaQuery.of(context).size.height/2,
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.only(top: 8),
        child: Expanded(
          flex: 1,
          child: Container(
            margin: EdgeInsets.only(left: 16, right: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 8.0,
                    right: 8.0,
                  ),
                  child: Container(
                      child: Column(
                    children: [
                      Container(
                          width: MediaQuery.of(context).size.width,
                          child: Text(
                            'Email address',
                          )),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8),
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintStyle: TextStyle(
                              fontSize: 8.0,
                            ),
                            // hintText: 'Enter The E-mail '
                          ),
                        ),
                      )
                    ],
                  )),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 8.0,
                    right: 8.0,
                  ),
                  child: Container(
                      child: Column(
                    children: [
                      Container(
                          width: MediaQuery.of(context).size.width,
                          child: Text('Password')),
                      TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                          hintStyle: TextStyle(fontSize: 14.0),
                          //hintText: 'Enter The Password '
                        ),
                      )
                    ],
                  )),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      margin: EdgeInsets.only(top: 16.0),
                      child: Column(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width,
                            child: Text(
                              'Confirm PassWord',
                            ),
                          ),
                          TextFormField(
                            obscureText: true,
                            decoration: InputDecoration(
                              hintStyle: TextStyle(fontSize: 14.0),
                              //hintText: 'Enter The Password '
                            ),
                          )
                        ],
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16, right: 16),
                  child: Container(
                    margin: EdgeInsets.only(top: 32.0, bottom: 16.0),
                    width: MediaQuery.of(context).size.width,
                    height: 40,
                    child: RaisedButton(
                      onPressed: () {},
                      child: Text(
                        'Sign-UP',
                        style: TextStyle(color: Colors.white, fontSize: 20.0),
                      ),
                      color: Colors.orange[900],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
