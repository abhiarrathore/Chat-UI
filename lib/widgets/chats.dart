import 'package:chatui/screens/chat.dart';
import 'package:flutter/material.dart';
import 'package:chatui/models/data.dart';

Widget getChast(){
  return Expanded(
    child: Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(25)
        ),
        child: ListView.builder(
          itemCount: chats.length,
          itemBuilder: (BuildContext context, int index){
            return Padding(
              padding: const EdgeInsets.fromLTRB(20.0, 20, 20, 10,),
              child: GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (_) => ChatScreen(user : chats[index].name)));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage(chats[index].imageUrl),
                        ),
                        SizedBox(width: 10,),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(chats[index].name),
                            SizedBox(height: 8,),
                            Text(chats[index].msg, style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w300),)
                          ],
                        ),
                      ],
                    ),
                    Text(chats[index].time)
                  ],
                ),
              ),
            );
          }
        ),
      ),
    )
  );
}