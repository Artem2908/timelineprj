import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:timelineprj/home/widgets/custom_divider.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var date = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDivider(userName: 'Carl Johnson', mail: 'cj1968@gmai.com'),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                          "https://vgta.clan.su/_ph/4/622086125.png",
                        )),
                  ),
                  height: 200.0,
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Builder(builder: (context) {
                            return IconButton(
                              icon: Icon(Icons.menu, color: Colors.white),
                              onPressed: () => Scaffold.of(context).openDrawer(),
                            );
                          }),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(24.0, 16.0, 0.0, 0.0),
                        child: Row(
                          children: <Widget>[
                            Text(
                              'Timeline',
                              style: TextStyle(fontSize: 30.0, fontStyle: FontStyle.normal, color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(24.0, 0.0, 0.0, 0.0),
                        child: Row(
                          children: <Widget>[
                            Text(
                              DateFormat('MMM yyyy').format(DateTime.now()),
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 17.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(350.0, 140.0, 0.0, 0.0),
                  child: FloatingActionButton(
                    child: Icon(Icons.add),
                  ),
                ),
              ],
            ),
            Expanded(
              flex: 1,
              child: CustomScrollView(
                slivers: <Widget>[
                  SliverList(
                    delegate: SliverChildListDelegate(
                      [
                        Column(
                          children: <Widget>[
                            Container(
                              color: Colors.grey[350],
                              child: Padding(
                                padding: const EdgeInsets.all(24.0),
                                child: Row(
                                  children: <Widget>[
                                    Text(
                                      DateFormat('EEE, MMM dd, yyyy').format(DateTime.now()),
                                      style: TextStyle(fontSize: 20.0),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 300.0,
                              child: CustomScrollView(
                                physics: AlwaysScrollableScrollPhysics(),
                                slivers: <Widget>[
                                  SliverList(
                                    delegate: SliverChildListDelegate(
                                      [
                                        Container(
                                          child: Stack(
                                            children: <Widget>[
                                              Column(
                                                children: <Widget>[
                                                  Row(
                                                    children: <Widget>[
                                                      Padding(
                                                        padding: EdgeInsets.all(36.0),
                                                        child: Column(
                                                          children: <Widget>[
                                                            Text(
                                                              DateFormat('hh').format(DateTime.now()),
                                                            ),
                                                            Text(
                                                              DateFormat('aa').format(DateTime.now()),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      Container(
                                                        width: 2.0,
                                                        height: 110.0,
                                                        color: Colors.grey[350],
                                                      ),
                                                      Padding(
                                                        padding: EdgeInsets.all(36.0),
                                                        child: Column(
                                                          children: <Widget>[Text('Title'), Text('subtitle')],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                              IconButton(
                                                padding: EdgeInsets.fromLTRB(89.0, 50.0, 0.0, 0.0),
                                                icon: Icon(Icons.brightness_1, color: Colors.green),
                                                iconSize: 12.0,
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          child: Stack(
                                            children: <Widget>[
                                              Column(
                                                children: <Widget>[
                                                  Row(
                                                    children: <Widget>[
                                                      Padding(
                                                        padding: EdgeInsets.all(36.0),
                                                        child: Column(
                                                          children: <Widget>[
                                                            Text(
                                                              DateFormat('hh').format(DateTime.now()),
                                                            ),
                                                            Text(
                                                              DateFormat('aa').format(DateTime.now()),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      Container(
                                                        width: 2.0,
                                                        height: 110.0,
                                                        color: Colors.grey[350],
                                                      ),
                                                      Padding(
                                                        padding: EdgeInsets.all(36.0),
                                                        child: Column(
                                                          children: <Widget>[Text('Title'), Text('subtitle')],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                              IconButton(
                                                padding: EdgeInsets.fromLTRB(89.0, 50.0, 0.0, 0.0),
                                                icon: Icon(Icons.brightness_1, color: Colors.green),
                                                iconSize: 12.0,
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          child: Stack(
                                            children: <Widget>[
                                              Column(
                                                children: <Widget>[
                                                  Row(
                                                    children: <Widget>[
                                                      Padding(
                                                        padding: EdgeInsets.all(36.0),
                                                        child: Column(
                                                          children: <Widget>[
                                                            Text(
                                                              DateFormat('hh').format(DateTime.now()),
                                                            ),
                                                            Text(
                                                              DateFormat('aa').format(DateTime.now()),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      Container(
                                                        width: 2.0,
                                                        height: 110.0,
                                                        color: Colors.grey[350],
                                                      ),
                                                      Padding(
                                                        padding: EdgeInsets.all(36.0),
                                                        child: Column(
                                                          children: <Widget>[Text('Title'), Text('subtitle')],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                              IconButton(
                                                padding: EdgeInsets.fromLTRB(89.0, 50.0, 0.0, 0.0),
                                                icon: Icon(Icons.brightness_1, color: Colors.green),
                                                iconSize: 12.0,
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          child: Stack(
                                            children: <Widget>[
                                              Column(
                                                children: <Widget>[
                                                  Row(
                                                    children: <Widget>[
                                                      Padding(
                                                        padding: EdgeInsets.all(36.0),
                                                        child: Column(
                                                          children: <Widget>[
                                                            Text(
                                                              DateFormat('hh').format(DateTime.now()),
                                                            ),
                                                            Text(
                                                              DateFormat('aa').format(DateTime.now()),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      Container(
                                                        width: 2.0,
                                                        height: 110.0,
                                                        color: Colors.grey[350],
                                                      ),
                                                      Padding(
                                                        padding: EdgeInsets.all(36.0),
                                                        child: Column(
                                                          children: <Widget>[Text('Title'), Text('subtitle')],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                              IconButton(
                                                padding: EdgeInsets.fromLTRB(89.0, 50.0, 0.0, 0.0),
                                                icon: Icon(Icons.brightness_1, color: Colors.green),
                                                iconSize: 12.0,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            Container(
                              color: Colors.grey[350],
                              child: Padding(
                                padding: const EdgeInsets.all(24.0),
                                child: Row(
                                  children: <Widget>[
                                    Text(
                                      DateFormat('EEE, MMM dd, yyyy')
                                          .format(DateTime(date.year, date.month, date.day + 1)),
                                      style: TextStyle(fontSize: 20.0),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 300.0,
                              child: CustomScrollView(
                                physics: AlwaysScrollableScrollPhysics(),
                                slivers: <Widget>[
                                  SliverList(
                                    delegate: SliverChildListDelegate(
                                      [
                                        Container(
                                          child: Stack(
                                            children: <Widget>[
                                              Column(
                                                children: <Widget>[
                                                  Row(
                                                    children: <Widget>[
                                                      Padding(
                                                        padding: EdgeInsets.all(36.0),
                                                        child: Column(
                                                          children: <Widget>[
                                                            Text(
                                                              DateFormat('hh').format(DateTime.now()),
                                                            ),
                                                            Text(
                                                              DateFormat('aa').format(DateTime.now()),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      Container(
                                                        width: 2.0,
                                                        height: 110.0,
                                                        color: Colors.grey[350],
                                                      ),
                                                      Padding(
                                                        padding: EdgeInsets.all(36.0),
                                                        child: Column(
                                                          children: <Widget>[Text('Title'), Text('subtitle')],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                              IconButton(
                                                padding: EdgeInsets.fromLTRB(89.0, 50.0, 0.0, 0.0),
                                                icon: Icon(Icons.brightness_1, color: Colors.green),
                                                iconSize: 12.0,
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          child: Stack(
                                            children: <Widget>[
                                              Column(
                                                children: <Widget>[
                                                  Row(
                                                    children: <Widget>[
                                                      Padding(
                                                        padding: EdgeInsets.all(36.0),
                                                        child: Column(
                                                          children: <Widget>[
                                                            Text(
                                                              DateFormat('hh').format(DateTime.now()),
                                                            ),
                                                            Text(
                                                              DateFormat('aa').format(DateTime.now()),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      Container(
                                                        width: 2.0,
                                                        height: 110.0,
                                                        color: Colors.grey[350],
                                                      ),
                                                      Padding(
                                                        padding: EdgeInsets.all(36.0),
                                                        child: Column(
                                                          children: <Widget>[Text('Title'), Text('subtitle')],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                              IconButton(
                                                padding: EdgeInsets.fromLTRB(89.0, 50.0, 0.0, 0.0),
                                                icon: Icon(Icons.brightness_1, color: Colors.green),
                                                iconSize: 12.0,
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          child: Stack(
                                            children: <Widget>[
                                              Column(
                                                children: <Widget>[
                                                  Row(
                                                    children: <Widget>[
                                                      Padding(
                                                        padding: EdgeInsets.all(36.0),
                                                        child: Column(
                                                          children: <Widget>[
                                                            Text(
                                                              DateFormat('hh').format(DateTime.now()),
                                                            ),
                                                            Text(
                                                              DateFormat('aa').format(DateTime.now()),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      Container(
                                                        width: 2.0,
                                                        height: 110.0,
                                                        color: Colors.grey[350],
                                                      ),
                                                      Padding(
                                                        padding: EdgeInsets.all(36.0),
                                                        child: Column(
                                                          children: <Widget>[Text('Title'), Text('subtitle')],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                              IconButton(
                                                padding: EdgeInsets.fromLTRB(89.0, 50.0, 0.0, 0.0),
                                                icon: Icon(Icons.brightness_1, color: Colors.green),
                                                iconSize: 12.0,
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          child: Stack(
                                            children: <Widget>[
                                              Column(
                                                children: <Widget>[
                                                  Row(
                                                    children: <Widget>[
                                                      Padding(
                                                        padding: EdgeInsets.all(36.0),
                                                        child: Column(
                                                          children: <Widget>[
                                                            Text(
                                                              DateFormat('hh').format(DateTime.now()),
                                                            ),
                                                            Text(
                                                              DateFormat('aa').format(DateTime.now()),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      Container(
                                                        width: 2.0,
                                                        height: 110.0,
                                                        color: Colors.grey[350],
                                                      ),
                                                      Padding(
                                                        padding: EdgeInsets.all(36.0),
                                                        child: Column(
                                                          children: <Widget>[Text('Title'), Text('subtitle')],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                              IconButton(
                                                padding: EdgeInsets.fromLTRB(89.0, 50.0, 0.0, 0.0),
                                                icon: Icon(Icons.brightness_1, color: Colors.green),
                                                iconSize: 12.0,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
