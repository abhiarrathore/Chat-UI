import 'package:chatui/widgets/chats.dart';
import 'package:chatui/widgets/favoriteContacts.dart';
import 'package:flutter/material.dart';
import 'package:chatui/widgets/category_selector.dart';
import 'package:chatui/widgets/misc.dart';
import 'package:chatui/models/data.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getAppBar(),
      backgroundColor: Theme.of(context).primaryColor,
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.orange[500],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Chat App', style: TextStyle(fontSize: 22),),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10.0),
                    child: Row(
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage('assets/images/me.jpg'),
                        ),
                        SizedBox(width: 15,),
                        Text('abhiarrathore', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w400),)
                      ],
                    ),
                  )
                ],
              ),
            ),
            ListTile(
              title: Row(
                children: [
                  Icon(
                    Icons.privacy_tip
                  ),
                  SizedBox(width: 5,),
                  Text('Privacy Policy')
                ],
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Row(
                children: [
                  Icon(
                    Icons.settings
                  ),
                  SizedBox(width: 5,),
                  Text('Settings')
                ],
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          CategorySelector(),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                // color: Colors.white,
                color: Theme.of(context).accentColor,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(25), topRight: Radius.circular(25))
              ),
              child: Column(
                children: [
                  ...getFavoriteContacts(),
                  getChast()        
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}