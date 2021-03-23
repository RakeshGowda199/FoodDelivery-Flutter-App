import 'dart:async';
import 'package:flutter/material.dart';
import 'package:foodelivery/Screens/CartScreen.dart';
import 'package:foodelivery/models/DashBoardListModel.dart';
import 'package:foodelivery/models/DashBoardListModel.dart';
import 'package:foodelivery/models/DashBoardListModel.dart';
import 'package:foodelivery/models/DashBoardListModel.dart';
import 'ProductDetailsScreen.dart';

class DashBoardScreen extends StatefulWidget {
  @override
  _DashBoardScreenState createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {
  double xOffset = 230;
  double yOffset = 150;
  double scaleFactor = 0.6;
  bool isDrawerOpen = true;

  int _selectedIndex = 0;

  List<DashBoardListModel> mListData = fetchAll();
  List<String> mListTitle = ['Foods', 'Driks', 'Snackes', 'Souce'];


  static List<DashBoardListModel> fetchAll() {
    return [
      DashBoardListModel( title: "Snack's",image_assets: 'assets/images/bgintrotwo.jpg',starteingPrice: "49 RS"),
      DashBoardListModel( title: "Breack-Fast",image_assets: 'assets/images/spalshbg.jpg',starteingPrice: "79 RS"),
      DashBoardListModel( title: "Lonches",image_assets: 'assets/images/bgintrotwo.jpg',starteingPrice: "99 RS"),
      DashBoardListModel( title: "Dinner",image_assets: 'assets/images/bgintrotwo.jpg',starteingPrice: "149 RS"),
    ];
  }



  Container ListContainer(int index) {
    return Container(
        decoration: BoxDecoration(
            color: Colors.black12,
            borderRadius: BorderRadius.only(
              topLeft: Radius.elliptical(80, 100),
              topRight: Radius.elliptical(80,100),
              bottomLeft: Radius.circular(80),
              bottomRight: Radius.circular(80),
            )),
        child: Column(children: [
          Container(

            margin: EdgeInsets.only(
              bottom: 8.0
            ),
            child: Padding(
              padding: const EdgeInsets.only(
                left: 16.0,
                right: 16.0,

              ),
              child: Container(
                height: 175,
                child: ClipRRect(
                borderRadius: BorderRadius.circular(28.0),
                  child: Image(
                    image: AssetImage(
                        mListData[index].image_assets
                    ),
                  ),
        ),
              ),
            ),
          ),
          Text((mListData[index].title)),
          Padding(
            padding: const EdgeInsets.only(top:4.0),
            child: Text(
                ('Starting at'),
              style: TextStyle(
                fontStyle: FontStyle.italic

              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              top: 4.0
            ),
            child: Text((mListData[index].starteingPrice),style: TextStyle(
              color: Colors.deepOrange,
              fontWeight: FontWeight.bold
            ),),
          ),

        
        ]));
  }

  @override
  void initState() {
    mListTitle.add("Foods");
    mListTitle.add("Driks");
    mListTitle.add("Snackes");
    mListTitle.add("Souce");
    Timer(
        Duration(
          seconds: 2,
        ),
        () => {
              setState(() {
                xOffset = 0;
                yOffset = 0;
                scaleFactor = 1;
                isDrawerOpen = false;
              })
            });
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  tabMaker() {
    for (var i = 0; i < mListTitle.length; i++) {
      return Tab(
        text: mListTitle[i],
      );
    }
    ;
  }

  // static const TextStyle optionStyle =

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      transform: Matrix4.translationValues(xOffset, yOffset, 0)
        ..scale(scaleFactor),

      //color: Color.fromRGBO(242, 244, 244, 8.0),
      duration: Duration(milliseconds: 350),
      /* height: isDrawerOpen ? 500.0 : 0.0,
        width: isDrawerOpen ? 300.0 : 0.0,*/
      decoration: BoxDecoration(
          color: Color.fromRGBO(242, 242, 242, 1.0),
          borderRadius: isDrawerOpen
              ? BorderRadius.only(
                  topLeft: Radius.circular(24),
                  bottomLeft: Radius.circular(24),
                )
              : BorderRadius.only(
                  topLeft: Radius.circular(0),
                  bottomLeft: Radius.circular(0),
                )),

      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Scaffold(
          bottomNavigationBar: BottomNavigationBar(

            backgroundColor: Colors.transparent,
            type: BottomNavigationBarType.fixed,
            //
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.favorite),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.history),
                label: '',
              ),
            ],
            // currentIndex: _selectedIndex,
            currentIndex: _selectedIndex,
            selectedItemColor: Colors.amber[800],

            onTap: _onItemTapped,
            // onTap: _onItemTapped,
          ),
          body: SingleChildScrollView(
            child: Container(
              decoration: BoxDecoration(
                  //  color: Color.fromRGBO(242, 242, 242, 1.0),
                  borderRadius: isDrawerOpen
                      ? BorderRadius.only(
                          topLeft: Radius.circular(24),
                          bottomLeft: Radius.circular(24),
                        )
                      : BorderRadius.only(
                          topLeft: Radius.circular(0),
                          bottomLeft: Radius.circular(0),
                        )),
              //color: Colors.transparent,
              child: Column(
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        isDrawerOpen
                            ? FlatButton(
                                onPressed: () => {
                                      setState(() {
                                        xOffset = 0;
                                        yOffset = 0;
                                        scaleFactor = 1;
                                        isDrawerOpen = false;
                                      })
                                    },
                                child: IconButton(
                                  icon: Icon(Icons.arrow_back),
                                  onPressed: () {
                                    setState(() {
                                      xOffset = 0;
                                      yOffset = 0;
                                      scaleFactor = 1;
                                      isDrawerOpen = false;
                                    });
                                  },
                                ))
                            : FlatButton(
                                onPressed: () => {
                                      setState(() {
                                        xOffset = 230;
                                        yOffset = 150;
                                        scaleFactor = 0.6;
                                        isDrawerOpen = true;
                                      })
                                    },
                                child: Image(
                                  image: AssetImage('assets/images/drawer.png'),
                                )),
                        FlatButton(
                            child: Image(
                              image:
                                  AssetImage('assets/images/shoppingcart.png'),
                            ),
                            onPressed: () => {

                              Navigator.push(context, MaterialPageRoute(
                                  builder: (context) => CartScreen()
                              ))
                            })
                      ],
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.only(top: 24, left: 24),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Delicious \n food for your',
                          style: TextStyle(
                              fontSize: 36, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.only(top: 24, left: 24),
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(226, 226, 229, 1.0),
                        borderRadius: BorderRadius.circular(32.0)),
                    child: TextFormField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(32.0),
                          ),
                          prefixIcon: Icon(Icons.search),
                          hintText: 'Serarch'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(

                        margin: EdgeInsets.symmetric(vertical: 8.0),
                        width: MediaQuery.of(context).size.width,
                        height: 32,
                        child: DefaultTabController(
                          length: 4,
                          child: TabBar(
                            onTap: (index) {
                              print(mListTitle[index]);
                            },
                            labelStyle: TextStyle(fontSize: 20.0),
                            labelColor: Colors.deepOrange,
                            unselectedLabelColor: Colors.black45,
                            isScrollable: true,
                            tabs: [
                              Tab(
                                child: Text('Foods'),
                              ),
                              Tab(
                                child: Text('Drinkes'),
                              ),
                              Tab(
                                child: Text('Snakces'),
                              ),
                              Tab(
                                child: Text('Souce'),
                              ),
                            ],
                          ),
                        )),
                  ),
                  Container(
                      width: MediaQuery.of(context).size.width,
                      height: 275,
                      child: ListView.builder(
                        itemCount: fetchAll().length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (BuildContext context, int index) {
                          return GestureDetector(
                            child: Container(
                              width: 175,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ListContainer(index),
                              ),
                            ),
                           onTap: (){
                             Navigator.push(
                                 context,
                                 MaterialPageRoute(
                                     builder: (context) => ProductDetailsScreen()
                                 )
                             );
                           },
                          );
                        },
                      )
                  )
                ],
              ),
            ),
          ),
        ),
      ),
      /*child: Container(
            child: Container(
              margin: EdgeInsets.only(top: 65.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0),
                    child: FlatButton(
                        child: Image(
                          image: AssetImage('assets/images/drawer.png'),
                        ),
                        onPressed: () =>
                        {
                        }
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 16.0),
                    child: FlatButton(
                      child: Image(
                        image: AssetImage('assets/images/shoppingcart.png'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ), */
      /* ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
          ),
        ],
        // currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        // onTap: _onItemTapped,
      ),
*/
    );
  }
}

/*class Bottomnav extends StatefulWidget {
  @override
  _BottomnavState createState() => _BottomnavState();
}

class _BottomnavState extends State<Bottomnav> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
          ),
        ],
       // currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
       // onTap: _onItemTapped,
      ),
    );

  }
}*/

class _DashListContainer extends StatefulWidget {
  @override
  __DashListContainerState createState() => __DashListContainerState();
/*List<DashBoardListModel> _mList ;
  _DashListContainer( this._mList);*/

}

class __DashListContainerState extends State<_DashListContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 100,
        height: 100,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(100), topRight: Radius.circular(100))),
        child: Column(
          children: [],
        ));
  }
}
