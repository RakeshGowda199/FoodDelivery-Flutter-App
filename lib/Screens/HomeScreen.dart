import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodelivery/Screens/DashBoardScreen.dart';
import 'package:foodelivery/Screens/DrawerScreen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(242, 244, 244, 8.0),
      body: Stack(
        children: [
          DrawerScreen(),
          DashBoardScreen(),

        ],
      ),
    );
  }
}
