import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:codeit/HomePage.dart';
import 'package:codeit/AssignmentPage.dart';
import 'package:codeit/GroupWorkPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Coder',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;
  final tab = [
    Center(
      child: HomePage(),
    ),
    Center(
      child: AssignmentPage(),
    ),
    Center(
      child: GroupWorkPage(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.orangeAccent,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Center(
            child: Text(
              'Nothing',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),
        body: SafeArea(
          child: tab[_currentIndex],
        ),
        bottomNavigationBar: CurvedNavigationBar(
          color: Colors.black,
          backgroundColor: Colors.white,
          buttonBackgroundColor: Colors.black,
          height: 50,
          items: <Widget>[
            Icon(
              Icons.home,
              size: 20,
              color: Colors.white,
            ),
            Icon(
              Icons.assignment,
              size: 20,
              color: Colors.white,
            ),
            Icon(
              Icons.group_work,
              size: 20,
              color: Colors.white,
            ),
          ],
          animationDuration: Duration(milliseconds: 150),
          animationCurve: Curves.bounceInOut,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
        ),
      ),
    );
  }
}
