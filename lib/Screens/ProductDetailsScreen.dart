import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:page_view_indicators/circle_page_indicator.dart';

class ProductDetailsScreen extends StatefulWidget {
  @override
  _ProductDetailsScreenState createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
          color: Colors.white70,
          child: Column(
            children: [
              _toolBar(),
              _PagerImages(),
              _DescriptionCenter(),
              _AddToCartBtn()
            ],
          )),
    );
  }
}

class _toolBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 32, left: 20, right: 32),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: Icon(Icons.arrow_back),
        ),
          Icon(Icons.favorite_border)],
      ),
    );
  }
}

class _PagerImages extends StatefulWidget {
  @override
  __PagerImagesState createState() => __PagerImagesState();
}

class __PagerImagesState extends State<_PagerImages> {
  final PageController _pageController = PageController();

  final List<String> _imageList = const [
    'assets/images/platefood.png',
    'assets/images/platefood.png',
    'assets/images/platefood.png',
    'assets/images/platefood.png',
  ];

   double _currentPage = 0;
  int _currentPostion=0;
  bool _hideIntroduction = false;

  final ValueNotifier<int> _pageNotifier = new ValueNotifier<int>(0);


  @override
  void initState() {
    _pageController.addListener(() {
      setState(() => {
        _currentPage = _pageController.page,
        _currentPostion=_pageController.page as int
      }


      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 16,),
      child: Center(
        child: Column(
          children: [
            Container(

              width: MediaQuery.of(context).size.width,
              height: 200,
              child: PageView(
                controller: _pageController,
                children: [
                  for(int i=0;i<_imageList.length;i++)
                  _pageViewChildImage(_imageList[i]
                  )
                ],

                onPageChanged:(index) {
                  setState(() {
                    _pageNotifier.value = index;
                  });
                },
              ),

            ),
            Padding(
              padding: const EdgeInsets.all(14.0),
              child: Center(
                child: CirclePageIndicator(
                  currentPageNotifier: _pageNotifier,
                  itemCount: _imageList.length.toInt(),
                  selectedDotColor: Colors.orangeAccent,
                  dotColor: Colors.black12,
                ),
              ),
            ),

            Text(
              'Veggie Tomato Mix',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),
            )
          ],

        ),

      ),
    );
  }
}

Widget _pageViewChildImage(String imageString) {
  return Image.asset(imageString,fit: BoxFit.contain,);
}
class _DescriptionCenter extends StatefulWidget {
  @override
  __DescriptionCenterState createState() => __DescriptionCenterState();
}

class __DescriptionCenterState extends State<_DescriptionCenter> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        height: 200,
        margin: EdgeInsets.only(
          top: 32,
          left:28
        ),
        child: Column(
          children: [
            Container(
              alignment: Alignment.topLeft,
              child: Text('Delivery info',
                style: TextStyle(
                  fontWeight: FontWeight.bold
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(' Deliverable from monday to saturday from 9.00 AM To 9.00 PM'),
            ),
            Container(
              margin: EdgeInsets.only(
                top: 20
              ),
              alignment: Alignment.topLeft,
              child: Text('Return Policy',
                style: TextStyle(
                  fontWeight: FontWeight.bold
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('All our foods are double checked before leaving our stores so by any case you found a broken food please contact our hotline immediately.'),
            ),
          ],
        ),
      ),
      
    );
  }
}

class _AddToCartBtn extends StatefulWidget {
  @override
  __AddToCartBtnState createState() => __AddToCartBtnState();
}

class __AddToCartBtnState extends State<_AddToCartBtn> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 70,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: RaisedButton(
          onPressed:(){},
          child: Text(
            'Add to cart ',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20
            ),
          ),
          color: Colors.orange[900],
            shape : RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.0),
          ),
        ),
      ),
    );
  }
}


