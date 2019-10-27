import 'package:flutter/material.dart';
import 'package:warm_coat_ui/data/model.dart'; // products, 可以直接用的

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.white, // pink
      ),
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class MyPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final p1 = Offset(50, 50);
    final p2 = Offset(250, 50);
    final paint = Paint()
      ..color = Colors.yellow.shade600
      ..strokeWidth = 21;
    canvas.drawLine(p1, p2, paint);
  }

  @override
  bool shouldRepaint(CustomPainter old) {
    // return old.myParams != myParams;
    return false;
  }
}



class _HomePageState extends State<HomePage> {

  Widget _buildBg() {
    return CustomPaint(
      size: Size(200, 200),
      painter: MyPainter(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Container(height: 100,),
        Container(
          width: 300,
          height: 250,
//          color: Colors.blueGrey,

          // 这里如果使用一张图片作为背景的话，显得太傻了，
          // 如果适用 stack,也是很尴尬
          // 试试看 painter
          child: Text(
            " this is \n some text",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 36,

            ),
          ),

          // 先放在这里试试看按效果
        ),
        _buildBg(),
      ]),
    );
  }
}
