import 'package:codeit/Quizzler_java.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:codeit/Quizzler_c.dart';
import 'package:codeit/Quizzler_py.dart';

void main() => runApp(AssignmentPage());

QuizzlerJava quizzlerJava = QuizzlerJava();

QuizzlerC quizzlerc = QuizzlerC();

QuizzlerPy quizzlerPy = QuizzlerPy();

class AssignmentPage extends StatefulWidget {
  @override
  _AssignmentPageState createState() => _AssignmentPageState();
}

class _AssignmentPageState extends State<AssignmentPage> {
  List<Widget> containers = [
    Container(
      child: quizzlerc,
    ),
    Container(
      child: quizzlerJava,
    ),
    Container(
      child: quizzlerPy,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            tabs: <Widget>[
              Tab(
                text: 'c',
              ),
              Tab(
                text: 'java',
              ),
              Tab(
                text: 'python',
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: containers,
        ),
      ),
    );
  }
}
