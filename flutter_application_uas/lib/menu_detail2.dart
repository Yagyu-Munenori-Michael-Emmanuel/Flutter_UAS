import 'package:flutter/material.dart';
import 'package:flutter_application_uas/bottom_bar.dart';

class MenuDetail2 extends StatelessWidget {
  final assetPath2, menuprice2, menuname2, menudetail2;

  MenuDetail2({this.assetPath2, this.menuprice2, this.menuname2, this.menudetail2});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Color(0xFF545D68)),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: Text('Menu Detail',
            style: TextStyle(
                fontFamily: 'Varela',
                fontSize: 20.0,
                color: Color(0xFF545D68))),
      ),

      body: ListView(
        children: [
          SizedBox(height: 15.0),
          Padding(
            padding: EdgeInsets.only(left: 20.0),
            child: Text(
              'Side Dish',
              style: TextStyle(
                      fontFamily: 'Varela',
                      fontSize: 42.0,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFF17532))
            ),
          ),
            SizedBox(height: 15.0),
            Hero(
              tag: assetPath2,
              child: Image.asset(assetPath2,
              height: 150.0,
              width: 100.0,
              fit: BoxFit.contain
              )
            ),
            SizedBox(height: 20.0),
            Center(
              child: Text(menuprice2, // << MENU PRICE pada Menu Detail
                  style: TextStyle(
                      fontFamily: 'Varela',
                      fontSize: 22.0,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFF17532))),
            ),
            SizedBox(height: 10.0),
            Center(
              child: Text(menuname2, // << MENU NAME pada Menu Detail
                  style: TextStyle(
                      color: Color(0xFF575E67),
                      fontFamily: 'Varela',
                      fontSize: 24.0)),
            ),
            SizedBox(height: 20.0),
            Center(
              child: Text(menudetail2, // << MENU NAME pada Menu Detail
                  style: TextStyle(
                      color: Color(0xFF575E67),
                      fontFamily: 'Varela',
                      fontSize: 16.0)),
            //  child: Container(
            //    width: MediaQuery.of(context).size.width - 50.0,
            //    child: Text('Cold, creamy ice cream sandwiched between delicious deluxe cookies. Pick your favorite deluxe cookies and ice cream flavor.',
            //    textAlign: TextAlign.center,
            //    style: TextStyle(
            //          fontFamily: 'Varela',
            //          fontSize: 16.0,
            //          color: Color(0xFFB4B8B9))
            //    ),
            //  ),
            ),
            SizedBox(height: 20.0),
            Center(
              child: Container(
                width: MediaQuery.of(context).size.width - 50.0,
                height: 50.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25.0),
                  color: Color(0xFFF17532)
                ),
                child: Center(
                  child: Text('Add to cart',
                    style: TextStyle(
                      fontFamily: 'Varela',
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                ),
                  )
                )
              )
            )
        ]
      ),
      bottomNavigationBar: BottomBar(),
    );
  }
}
