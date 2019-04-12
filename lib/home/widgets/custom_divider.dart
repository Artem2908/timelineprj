import 'package:flutter/material.dart';

class CustomDivider extends StatelessWidget {
  final String userName;
  final String mail;
  CustomDivider({this.userName, this.mail,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          Row(
            children: <Widget>[
              Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.fromLTRB(8.0, 25.0, 8.0, 5.0,),
                    child: CircleAvatar(
                      radius: 25.0,
                      backgroundImage: NetworkImage(
                          "https://upload.wikimedia.org/wikipedia/ru/thumb/a/a7/Head.cj.jpg/250px-Head.cj.jpg"),
                    ),
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 0.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Text(
                          userName,
                          style: TextStyle(fontSize: 25.0),
                        )
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Text(mail,
                          style: TextStyle(color: Color(0xFF607D8B), fontSize: 14.0),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home'),
            trailing: Text('8'),
          ),
          getCustomDivider(),
          ListTile(
            leading: Icon(Icons.calendar_today),
            title: Text('Calendar'),
            trailing: Text(''),
          ),
          getCustomDivider(),
          ListTile(
            leading: Icon(Icons.group_work),
            title: Text('Groups'),
            trailing: Text('5'),
            onTap: () => print('1'),
          ),
          getCustomDivider(),
          ListTile(
            leading: Icon(Icons.list),
            title: Text('Lists'),
            trailing: Text('10'),
          ),
          getCustomDivider(),
          ListTile(
            leading: Icon(Icons.account_circle),
            title: Text('Profile'),
            trailing: Text(''),
          ),
          getCustomDivider(),
          ListTile(
            leading: Icon(Icons.timeline),
            title: Text('Timeline'),
            trailing: Text(''),
          ),
          getCustomDivider(),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
            trailing: Text(''),
          ),
          getCustomDivider(),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text('Log Out'), // todo
            trailing: Text(''),
          ),
          getCustomDivider(),
        ],
      ),
    );
  }
  Widget getCustomDivider() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: Divider(
        color: Colors.black,
        height: 1.0,
      ),
    );
  }
}
