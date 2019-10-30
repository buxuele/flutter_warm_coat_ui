import 'package:flutter/material.dart';
import 'package:badges/badges.dart';
import './detail_screen.dart';

import '../data/model.dart';       // products, 可以直接用的


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget _buildBanner() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 15),
      child: Container(
        height: 100,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              "ARITZIA",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                letterSpacing: 1,
              ),
            ),



            IconButton(
              icon: Badge(
                badgeContent: Text("1"),
                badgeColor: Colors.greenAccent,
                child: Icon(
                  Icons.shopping_basket,
                  color: Colors.black87,
                ),
              ),
              iconSize: 30,
              onPressed: () {},
            ),

          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          _buildBanner(),
          Container(
            // add left margin todo
            height: 430,
            color: Colors.grey,
            child: Stack(
              children: <Widget>[

                // white coat
                Positioned(
                  // white coat
                  top: 50,
                  right: 0,
                  child: Container(
                    height: 270,
                    width: 180,
                    child: Image.asset(
                      products[1].imagePath[0],
                      fit: BoxFit.contain,
                    ),
                  ),
                ),

                // text
                Positioned(
                  left: 12,
                  top: 0,

                  child: Text(
                    "STAY\nWARM\nTHIS FALL",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 36,

                      decoration: TextDecoration.underline,
                      decorationColor: Colors.yellow.shade700.withOpacity(0.7),
//                              decorationColor: Colors.yellow.shade700,
                      decorationStyle: TextDecorationStyle.solid,
                      decorationThickness: 6,
                    ),
                  ),
                ),

                // dark coat
                Positioned(
                  // white coat
                  bottom: 0,
                  left: 8,
                  child: Container(
                    height: 270,
                    width: 220,
                    child: Hero(
                      tag: products[0].name,
                      child: Image.asset(
                        products[0].imagePath[1],
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

          // explore
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (_) => DetailPage()
              ));
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Text(
                  "Explore",
                  style: TextStyle(
                    fontSize: 23,
                    letterSpacing: 1,
                  ),
                ),
                IconButton(
                  icon: Icon(
                    Icons.arrow_forward,
                    size: 30,
                    color: Colors.black87,
                  ),
                  onPressed: () {
//                    Navigator.of(context).push(MaterialPageRoute(
//                      builder: (_) => DetailPage()
//                    ));
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
