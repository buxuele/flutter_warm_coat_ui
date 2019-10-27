import 'package:flutter/material.dart';

import '../data/model.dart';

class TestPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,   // must have this line to fullscreen the img
        children: [
          Container(
            color: Colors.blueGrey,
            child: Image.asset(
              products[0].imagePath[3],
              fit: BoxFit.cover,    // must be cover
            ),
          ),
          Positioned(
            top: 30,
            left: 20,
            right: 20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Icon(
                  Icons.arrow_back,
                  size: 30,
                  color: Colors.black87,
                ),
                Icon(
                  Icons.shopping_basket,
                  size: 30,
                  color: Colors.black87,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
