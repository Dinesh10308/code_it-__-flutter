import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(HomePage());

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 1,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          bottom: TabBar(
            tabs: <Widget>[
              Tab(
                text: 'codeit',
              )
            ],
          ),
        ),
        /*body: Container(
          padding: EdgeInsets.fromLTRB(20, 200, 20, 40),
          child: Column(
        children: <Widget>[
          Container(
            child: Center(
              child: Text(
                'Codeit',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),*/
        body: Container(
          padding: EdgeInsets.only(left: 5, top: 10, right: 5, bottom: 10),
          child: Center(
            child: Text(
              'this app provides some basic questions about the popular programing languages',
              style: TextStyle(
                color: Colors.teal.shade900,
                fontSize: 30,
                fontWeight: FontWeight.bold,
                fontFamily: 'Pacifico',
              ),
            ),
          ),
        ),
      ),
    );
  }
}
