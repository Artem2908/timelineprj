import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:timelineprj/home/widgets/custom_divider.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDivider(userName: 'Carl Johnson', mail: 'cj1968@gmai.com'),
      body: SafeArea(
        child: CustomScrollView(
          physics: AlwaysScrollableScrollPhysics(),
          slivers: <Widget>[
            SliverAppBar(
              expandedHeight: 200.0,
              floating: false,
              pinned: true,
              leading: Builder(builder: (context) {
                return IconButton(
                  icon: Icon(Icons.menu),
                  onPressed: () => Scaffold.of(context).openDrawer(),
                );
              }),
              flexibleSpace: FlexibleSpaceBar(collapseMode: CollapseMode.none,
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      'Timeline',
                      style: TextStyle(fontSize: 25.0, fontStyle: FontStyle.normal),
                    ),
                    Text(
                      DateFormat('MMM yyyy').format(DateTime.now()),
                      style: TextStyle(
                        fontSize: 13.0,
                      ),
                    ),
                  ],
                ),
                //titlePadding: EdgeInsets.fromLTRB(40.0, 0.0, 0.0, 50.0),
                background: Image.network(
                  "https://vgta.clan.su/_ph/4/622086125.png",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                [Container(color: Colors.grey[350],
                    child: Padding(
                      padding: const EdgeInsets.all(24.0),
                      child: Row(children: <Widget>[Text(DateFormat('MMM yyyy').format(DateTime.now()),
                      style: TextStyle(fontSize: 20.0),)],),
                    ),
                  ),
                  Container(
                    child: Row(
                      children: <Widget>[
                        Padding(padding: EdgeInsets.all(36.0),
                          child: Column(
                            children: <Widget>[
                              Text('8'),Text('AM'),
                            ],
                          ),
                        ),
                        Container(
                          width: 2.0,
                          height: 104.0,
                          color: Colors.grey[350],
                        ),
                        Padding(padding: EdgeInsets.all(36.0),
                          child: Column(
                            children: <Widget>[
                              Text('Title'),
                              Text('subtitle')
                            ],
                          ),)
                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                      children: <Widget>[
                        Padding(padding: EdgeInsets.all(36.0),
                          child: Column(
                            children: <Widget>[
                              Text('8'),Text('AM'),
                            ],
                          ),
                        ),
                        Container(
                          width: 2.0,
                          height: 104.0,
                          color: Colors.grey[350],
                        ),
                        Padding(padding: EdgeInsets.all(36.0),
                          child: Column(
                            children: <Widget>[
                              Text('Title'),
                              Text('subtitle')
                            ],
                          ),)
                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                      children: <Widget>[
                        Padding(padding: EdgeInsets.all(36.0),
                          child: Column(
                            children: <Widget>[
                              Text('8'),Text('AM'),
                            ],
                          ),
                        ),
                        Container(
                          width: 2.0,
                          height: 104.0,
                          color: Colors.grey[350],
                        ),
                        Padding(padding: EdgeInsets.all(36.0),
                          child: Column(
                            children: <Widget>[
                              Text('Title'),
                              Text('subtitle')
                            ],
                          ),)
                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                      children: <Widget>[
                        Padding(padding: EdgeInsets.all(36.0),
                          child: Column(
                            children: <Widget>[
                              Text('8'),Text('AM'),
                            ],
                          ),
                        ),
                        Container(
                          width: 2.0,
                          height: 104.0,
                          color: Colors.grey[350],
                        ),
                        Padding(padding: EdgeInsets.all(36.0),
                          child: Column(
                            children: <Widget>[
                              Text('Title'),
                              Text('subtitle')
                            ],
                          ),)
                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                      children: <Widget>[
                        Padding(padding: EdgeInsets.all(36.0),
                          child: Column(
                            children: <Widget>[
                              Text('8'),Text('AM'),
                            ],
                          ),
                        ),
                        Container(
                          width: 2.0,
                          height: 104.0,
                          color: Colors.grey[350],
                        ),
                        Padding(padding: EdgeInsets.all(36.0),
                          child: Column(
                            children: <Widget>[
                              Text('Title'),
                              Text('subtitle')
                            ],
                          ),)
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
