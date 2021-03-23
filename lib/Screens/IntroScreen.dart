import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodelivery/Screens/LoginScreen.dart';

class IntroScreen extends StatelessWidget {

 /* var mAssets=new List<String>();
  mAssets.p*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,

        decoration: BoxDecoration(
          image: DecorationImage(
            fit:BoxFit.fill,
            image: AssetImage(
              "assets/images/bgintrotwo.jpg"
            ),
          )
           /* gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color.fromRGBO(	250, 74, 12, 0.9),
                  Color.fromRGBO(	250, 74, 12, 0.9),
                  Color.fromRGBO(	250, 74, 12, 0.8),
                  Color.fromRGBO(	250, 74, 12, 0.8),
              Colors.deepOrange[600],
              Colors.deepOrange[400],
              Colors.deepOrange[500]
            ])*/
           ),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 32.0, left: 16.0),
              child: Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        radius: 32,
                        backgroundColor: Colors.white,
                        child: Image(
                          image: AssetImage("assets/images/logoicon.png"),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 8.0, left: 30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Food for \nEveryone',
                    style: TextStyle(
                      // fontFamily: Font
                      fontSize: 48.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
           /* Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    children: [
                      Container(
                        child: Image(
                          width: MediaQuery.of(context).size.width / 2,
                          height: MediaQuery.of(context).size.height / 2,
                          image: AssetImage("assets/images/cartongirls.png"),
                        ),
                      ),
                      Container(

                        child: Column(
                          children: [
                            Image(
                              width: MediaQuery.of(context).size.width / 2,
                              height: MediaQuery.of(context).size.height / 3,
                              image:
                                  AssetImage('assets/images/cartoonboys.png'),
                            ),

                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),*/
            Container(

              child: Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(
                          vertical: 100.0
                      ),
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                         /* gradient: LinearGradient(
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                              colors: [
                                Color.fromRGBO(	250, 74, 12, 2.0),
                                Color.fromRGBO(	250, 74, 12, 4.0),
                                Color.fromRGBO(	250, 74, 12, 4.0),
                                Color.fromRGBO(	250, 74, 12, 0.0),
                          ])*/
                      ),
                      child: Container(
                        margin: EdgeInsets.symmetric(
                          horizontal: 32.0
                        ),
                        child: RaisedButton(
                          splashColor: Colors.orangeAccent,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16.0),
                          ),
                          onPressed: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => loginScreenSatatic()));
                          },
                          child: Text(
                            'Get Started ',
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ),
                    ),
                    Container()
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
