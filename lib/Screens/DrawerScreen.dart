import 'package:flutter/material.dart';

class DrawerScreen extends StatefulWidget {
  @override
  _DrawerScreenState createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
            Color.fromRGBO(250, 74, 12, 0.9),
            Color.fromRGBO(250, 74, 12, 0.9),
            Color.fromRGBO(250, 74, 12, 0.9),
            Color.fromRGBO(250, 74, 12, 0.9),


          ])),
      child: Container(
        height: MediaQuery.of(context).size.height,
        margin: EdgeInsets.only(
            top: MediaQuery.of(context).size.height / 4, left: 16),
        //  width: MediaQuery.of(context).size.width/2,
        //color: Colors.yellow,

        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            ListTile(
              onTap: () {
                print("Profile_Clicked");
              },
              leading: Icon(
                Icons.person_outline,
                color: Colors.white,
                size: 20,
              ),
              title: Padding(
                padding: const EdgeInsets.only(
                  bottom: 16,
                ),
                child: Text(
                  'Profile',
                  style: TextStyle(
                      color: Colors.white, fontSize: 18),
                ),
              ),
            ),
            ListTile(
              onTap: () {
                print("Orders_Clicked");
              },
              leading: Icon(
                Icons.add_shopping_cart,
                color: Colors.white,
                size: 20,
              ),
              title: Padding(
                padding: const EdgeInsets.only(
                  bottom: 16,

                ),
                child: Text(
                  'orders',
                  style: TextStyle(
                      color: Colors.white, fontSize: 18),
                ),
              ),
            ),
            ListTile(
              onTap: () {
                print("Offers_Clicked");
              },
              leading: Icon(
                Icons.local_offer,
                color: Colors.white,
                size: 20,
              ),
              title: Padding(
                padding: const EdgeInsets.only(
                  bottom: 16,

                ),
                child: Text(
                  'offer and Promo',
                  style: TextStyle(
                      color: Colors.white, fontSize: 18),
                ),
              ),
            ),
            ListTile(
              onTap: () {
                print("Privacy_Clicked");
              },
              leading: Icon(
                Icons.privacy_tip,
                color: Colors.white,
                size: 20,
              ),
              title: Padding(
                padding: const EdgeInsets.only(
                  bottom: 16,

                ),
                child: Text(
                  'Privacy Policy ',
                  style: TextStyle(
                      color: Colors.white, fontSize: 18),
                ),
              ),
            ),
            ListTile(
              onTap: () {
                print("Faq_Clicked");
              },
              leading: Icon(
                Icons.question_answer,
                color: Colors.white,
                size: 20,
              ),
              title: Padding(
                padding: const EdgeInsets.only(
                  bottom: 16,

                ),
                child: Text(
                  "Faq's",
                  style: TextStyle(
                      color: Colors.white, fontSize: 18),
                ),
              ),
            ),
            ListTile(
              onTap: () {
                print("About_Clicked");
              },
              leading: Icon(
                Icons.report,
                color: Colors.white,
                size: 20,
              ),
              title: Padding(
                padding: const EdgeInsets.only(
                  bottom: 16,

                ),
                child: Text(
                  'About US',
                  style: TextStyle(
                      color: Colors.white, fontSize: 18),
                ),
              ),
            ),
            ListTile(
              onTap: () {
                print("Help_Clicked");
              },
              leading: Icon(
                Icons.help,
                color: Colors.white,
                size: 20,
              ),
              title: Padding(
                padding: const EdgeInsets.only(
                  bottom: 16,

                ),
                child: Text(
                  'Help',
                  style: TextStyle(
                      color: Colors.white, fontSize: 18),
                ),
              ),
            ),
            ListTile(
              onTap: () {
                print("Signout_Clicked");
              },
              leading: Icon(
                Icons.logout,
                color: Colors.white,
                size: 20,
              ),
              title: Padding(
                padding: const EdgeInsets.only(
                  bottom: 16,

                ),
                child: Text(
                  'Sign-Out',
                  style: TextStyle(
                      color: Colors.white, fontSize: 18),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}

