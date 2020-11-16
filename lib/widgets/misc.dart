import 'package:flutter/material.dart';

AppBar getAppBar(){
  return AppBar(
    title: Center(
      child: Text('Chats'),
    ),
    elevation: 0,
    actions: [
      IconButton(
        icon: Icon(Icons.search),
        onPressed: (){ },
      )
    ],
  );
}