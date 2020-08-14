import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(GroupWorkPage());

class GroupWorkPage extends StatefulWidget {
  @override
  _GroupWorkPageState createState() => _GroupWorkPageState();
}

class _GroupWorkPageState extends State<GroupWorkPage> {
  List<Widget> containers = [
    Container(
        child: SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          CircleAvatar(
            radius: 50.0,
            backgroundImage: AssetImage('images/appstore.png'),
          ),
          Text(
            'dinesh ',
            style: TextStyle(
              fontFamily: 'Pacifico',
              fontSize: 40.0,
              color: Colors.black12,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            'FLUTTER DEVOLOPER',
            style: TextStyle(
              fontFamily: 'SourceSansPro',
              color: Colors.teal.shade100,
              fontSize: 20.0,
              letterSpacing: 2.5,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 20.0,
            width: 150,
            child: Divider(
              color: Colors.teal.shade100,
            ),
          ),
          Card(
            color: Colors.white,
            margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
            child: ListTile(
              leading: Icon(
                Icons.phone,
                size: 20.0,
                color: Colors.teal.shade900,
              ),
              title: Text(
                '81 799 75 175',
                style: TextStyle(
                  color: Colors.teal.shade900,
                  fontFamily: 'SourceSansPro',
                  fontSize: 20.0,
                ),
              ),
            ),
          ),
          Card(
            color: Colors.white,
            margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
            child: ListTile(
              leading: Icon(
                Icons.mail,
                size: 20.0,
                color: Colors.teal.shade900,
              ),
              title: Text(
                'dineshdevisetti@mail.com',
                style: TextStyle(
                  color: Colors.teal.shade900,
                  fontFamily: 'SourceSansPro',
                  fontSize: 20.0,
                ),
              ),
            ),
          ),
        ],
      ),
    )),
  ];

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
                text: 'Details',
              )
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
