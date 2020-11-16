import 'package:flutter/material.dart';
import 'package:chatui/models/data.dart';

List<Container> getFavoriteContacts(){
  return [
    Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(topLeft: Radius.circular(25), topRight: Radius.circular(25))
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Favorites Contacts'),
            IconButton(icon: Icon(Icons.more_horiz), onPressed: (){})
          ],
        ),
      ),
    ),
    Container(
      height: 90,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: users.length,
        itemBuilder: (BuildContext context, int index){
          return Padding(
            padding: EdgeInsets.only(left: 20, top: 10),
            child : Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage(users[index].imageUrl),
                ),
                Text(users[index].name, style: TextStyle(color: Colors.blueGrey),)
              ],
            )
          );
        }
      ),
    )
  ];
}