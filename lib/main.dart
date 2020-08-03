import 'package:Video_Player/page.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'colors/colors.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Video Player',
      theme: ThemeData(),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _seletedItem = 0;
  var _page = [FirstPage(), SecondPage(), ThirdPage()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: primarycolor,
        items: <Widget>[
          Icon(Icons.folder, size: 30),
          Icon(Icons.video_library, size: 30),
          Icon(Icons.videocam, size: 30),
        ],
        onTap: (index) {
          //Handle button tap
          setState(() {
            _seletedItem = index;
          });
        },
      ),
      body: Container(
        child: _page[_seletedItem],
      ),
    );
  }
}
