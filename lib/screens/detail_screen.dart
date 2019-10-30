import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart';


import '../data/model.dart';      //  products


class DetailPage extends StatefulWidget {
  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage>
    with SingleTickerProviderStateMixin {

  int _currentIndex = 0;
  final PageController _pageController = PageController();

  @override
  void initState() {
    super.initState();
    _pageController.addListener(_handlePageChange);
  }

  @override
  void dispose() {
    _pageController.removeListener(_handlePageChange);
    super.dispose();
  }

  void _handlePageChange() {
    setState(() {
      _currentIndex = _pageController.page.round();
    });
  }


  // main body part
  Widget _buildBody() {
    return PageView.builder(
//      physics: BouncingScrollPhysics(),
      itemCount: products[0].imagePath.length,    // 0 代表的是哪件衣服。
      controller: _pageController,
      scrollDirection: Axis.vertical,
      itemBuilder: (context, index) {     // 注意我们这里有一个index可以用哦

        return Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Stack(
            fit: StackFit.expand,   // must have this line to fullscreen the img
            children: [

              // bg img
              Container(
                child: Hero(
                  tag: products[0].name,
                  child: Image.asset(
                    products[0].imagePath[index],   // 先试试这个index
                    fit: BoxFit.cover,
                  ),
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

              // 4个小圆点作为页面切换标志
              Positioned(
                top: 260,
                right: 15,
                height: 150,
                width: 20,
                child: ListView.builder(
                  padding: EdgeInsets.symmetric(vertical: 25),
                  itemCount: products[0].imagePath.length,
                  scrollDirection: Axis.vertical,
                  physics: NeverScrollableScrollPhysics(),  // 4个小点是不会动的
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      child: Icon(
                        Icons.lens,
                        color: index == _currentIndex ? Colors.black : Colors.grey,
                        size: 12,
                      ),
                    );
                  },
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

      },
    );

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody(),
    );
  }
}
