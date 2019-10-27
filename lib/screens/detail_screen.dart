import 'package:flutter/material.dart';
import 'package:vertical_tabs/vertical_tabs.dart';

import '../data/model.dart';

class DetailPage extends StatefulWidget {
  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage>
    with SingleTickerProviderStateMixin {
  // 下面是 tabBar 的准备工作
//  TabController controller;
//
//  @override
//  void initState() {
//    super.initState();
//    controller = TabController(length: 3, vsync: this);
//  }
//
//  @override
//  void dispose() {
//    controller.dispose();
//    super.dispose();
//  }
//
//  TabBar getTabBar() {
//    return TabBar(
//      tabs: <Widget>[
//        Tab(icon: Icon(Icons.lens, color: Colors.white,)),
//        Tab(icon: Icon(Icons.lens)),
//        Tab(icon: Icon(Icons.lens)),
//      ],
//      controller: controller,
//    );
//  }
//
//  TabBarView getTabBarView(var tabs) {
//    return TabBarView(children: tabs, controller: controller);
//  }

  // main body part
  Widget _buildBody() {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            color: Colors.blueGrey,
            child: Image.asset(
              products[0].imagePath[1],
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: 30,
            left: 20,
            right: 20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                  icon: Icon(
                    Icons.arrow_back,
                    color: Colors.black87,
                  ),
                  iconSize: 30,
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
                IconButton(
                  icon: Icon(
                    Icons.shopping_basket,
                    color: Colors.black87,
                  ),
                  iconSize: 30,
                  onPressed: () {},
                ),
              ],
            ),
          ),

          // 这一部分 暂时先凑合吧
          Positioned(
            top: 260,
            right: 15,
            height: 100,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Icon(
                  Icons.lens,
                  color: Colors.black,
                  size: 12,
                ),
                Icon(
                  Icons.lens,
                  color: Colors.grey,
                  size: 12,
                ),
                Icon(
                  Icons.lens,
                  color: Colors.grey,
                  size: 12,
                ),
              ],
            ),
          ),

          Positioned(
            left: 30,
            bottom: 40,
//            height: 100,
            child: Column(
//              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  products[0].brand,
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
                Text(
                  products[0].name,
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                  maxLines: 2,
                ),
                Text(
                  "\$${products[0].price}",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),


          Positioned(
            bottom: 15,
            left: MediaQuery.of(context).size.width / 2 - 11,
            child: Icon(
              Icons.arrow_downward,
              size: 25,
              color: Colors.black87,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody(),

//      body: getTabBarView(<Widget>[_buildBody(), _buildBody(), _buildBody(),]),
    );
  }
}
