import 'package:flutter/material.dart';

class CartScreen extends StatefulWidget {
  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: Colors.white70,
          child: Column(
            children: [
              _ToolBartCart(),
              _ListOfCartItems(),
              _SaveNext()

            ],
          ),
        ),
      ),
    );
  }
}


class _ToolBartCart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          margin: EdgeInsets.only(top: 32, left: 20, right: 32),
          child:
          IconButton(
                tooltip: 'Back',
                onPressed: (){},
                icon: Icon(
                    Icons.arrow_back_ios
                ),
              ),
        ),
        Container(
          width: MediaQuery.of(context).size.width/3,
            margin: EdgeInsets.only(top: 32, left: 20, right: 32),

            alignment: Alignment.center,
            child: Text('Cart'))

      ],
    );
  }
}

class _ListOfCartItems extends StatefulWidget {
  @override
  __ListOfCartItemsState createState() => __ListOfCartItemsState();
}

class __ListOfCartItemsState extends State<_ListOfCartItems> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 4,
        scrollDirection: Axis.vertical,
        itemBuilder: (BuildContext context, int index){
          return GestureDetector(
            child: Container(
              child:_ListItemCartContainer()
            ),
          );
        },
      ),

    );
  }
}

class _ListItemCartContainer extends StatefulWidget {
  @override
  __ListItemCartContainerState createState() => __ListItemCartContainerState();
}

class __ListItemCartContainerState extends State<_ListItemCartContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.all(8.0),
      height: 100,
      child: Card(
        shape : RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.0),
        ),
        elevation: 5,
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,

          children: [
            Image(
              width: 85,
              height: 85,
              image:
              AssetImage(
                'assets/images/platefood.png',
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                Text(
                  'Veggie Tomato Mix',
                  style: TextStyle(
                      fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.black
                  ),
                ),Padding(
                  padding: const EdgeInsets.only(bottom: 16.0),
                  child: Text(
                    '1900 RS',
                    style: TextStyle(
                        fontSize: 14,
                      color: Colors.deepOrange
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  child: Card(
                    color: Colors.red,
                    shape : RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(32.0),
                    ),
                    child: Row(
                      children: [
                        IconButton(
                          iconSize: 16.0,
                          onPressed: (){},
                          tooltip: "Decres Item",
                          icon: Icon(
                              Icons.remove_circle_outline
                          ),
                        ),
                        Text('2'),
                        IconButton(
                          iconSize: 16.0,
                          onPressed: (){},
                          tooltip: "Decres Item",
                          icon: Icon(
                              Icons.add_circle_outline
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),

          ],
        ),
      ),
    );
  }
}


class _SaveNext extends StatefulWidget {
  @override
  _SaveNextState createState() => _SaveNextState();
}

class _SaveNextState extends State<_SaveNext> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Card(
          shape : RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.0),
          ),
          color: Colors.red,
          elevation: 0,
          child: Padding(
            padding: const EdgeInsets.only(
              left: 8,
              right: 8
            ),
            child: FlatButton(
              onPressed: ()=>{},
             color: Colors.red,
              child: Text(
                " Save ",
                style: TextStyle(
                  color: Colors.white
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}




