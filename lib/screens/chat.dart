import 'package:chatui/models/data.dart';
import 'package:flutter/material.dart';
import 'package:chatui/models/data.dart';
import 'package:flutter/services.dart';

class ChatScreen extends StatefulWidget {
  final String user;

  ChatScreen({ this.user });

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
        title: Center(child: Text(widget.user)),
        elevation: 0,
        actions: [
          Icon(Icons.more_horiz)
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20.0),
        child: Container(
          // padding: EdgeInsets.only(top: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(topLeft: Radius.circular(25), topRight: Radius.circular(25)),
            color: Colors.white
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Expanded(
                child: Container(
                  // height: 100,
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25),
                    ),
                    child: ListView.builder(
                      itemCount: messages.length,
                      itemBuilder: (BuildContext context, int index){
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              messages[index].uid == '1' ? SizedBox(width: 0) : SizedBox(width: 30),
                              Expanded(
                                child: Container(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(bottom : 3.0),
                                        child: Text(messages[index].time, style: TextStyle(color: Colors.blueGrey),),
                                      ),
                                      Text(messages[index].msg, style: TextStyle(color: Colors.black87),),
                                    ],
                                  ),
                                  decoration: messages[index].uid == '1' ? BoxDecoration(
                                    color: Theme.of(context).accentColor,
                                    borderRadius: BorderRadius.only(
                                      bottomRight: Radius.circular(10),
                                      topRight: Radius.circular(10),
                                    )
                                  )
                                  : BoxDecoration(
                                    color: Color(0xffefefef),
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(10),
                                      topLeft: Radius.circular(10),
                                    )
                                  ),
                                  padding: EdgeInsets.all(10),
                                ),
                              ),
                              messages[index].uid == '1' ? SizedBox(width: 30) : SizedBox(width: 0)
                            ],
                          ),
                        );
                      }
                    ),
                  )
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.emoji_emotions),
                    suffixIcon: IconButton(
                      icon: Icon(Icons.send),
                      onPressed: (){

                      },
                    ),
                    hintText: 'Enter Message',
                    contentPadding: EdgeInsets.fromLTRB(20, 8, 3, 8),
                    border: new OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(25.0),
                      borderSide: new BorderSide(color: Colors.grey),
                    ),
                    enabledBorder: new OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(25.0),
                      borderSide: new BorderSide(color: Colors.grey),
                    ),
                    focusedBorder: new OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(25.0),
                      borderSide: new BorderSide(color: Colors.orange),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}