import 'package:flutter/material.dart';
import 'package:timelineprj/ccdata.dart';
//import 'package:http/http.dart' as http;
//import 'dart:convert';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      drawer: Drawer(
          child: ListView(
            children: <Widget>[
              Row(),
              ListTile(
                leading: Icon(Icons.home),
                title: Text('Home'),
              ),
              ListTile(
                leading: Icon(Icons.calendar_today),
                title: Text('Calendar'),
              ),
              ListTile(
                leading: Icon(Icons.group_work),
                title: Text('Groups'),
              ),
              ListTile(
                leading: Icon(Icons.list),
                title: Text('Lists'),
              ),
              ListTile(
                leading: Icon(Icons.account_circle),
                title: Text('Profile'),
              ),
              ListTile(
                leading: Icon(Icons.timeline),
                title: Text('Timeline'),
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text('Settings'),
              ),
              ListTile(
                leading: Icon(Icons.exit_to_app),
                title: Text('Log Out'),
              ),
            ],

          ),
      ),
      body: SafeArea(
        child: CustomScrollView(
          physics: NeverScrollableScrollPhysics(),
          slivers: <Widget>[
            SliverAppBar(
              expandedHeight: 200.0,
              floating: false,
              pinned: true,
              leading: Icon(Icons.menu),
              flexibleSpace: FlexibleSpaceBar(
                title: Column(
                  mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text('Timeline',style: TextStyle(fontSize: 25.0, fontStyle: FontStyle.normal),),
                      Text('2018',style: TextStyle(fontSize: 25.0, fontStyle: FontStyle.normal),),
                    ],
                  ),
              //titlePadding: EdgeInsets.fromLTRB(40.0, 0.0, 0.0, 50.0),
              background: Image.network("https://images.unsplash.com/photo-1517021897933-0e0319cfbc28?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80",
                fit: BoxFit.cover,
              ),
            ),
      ),
      SliverFillRemaining(
          child: Container(
            color: Colors.grey[350],

          )
                  ),
                ],
              ),
      ),
          );
  }
}
