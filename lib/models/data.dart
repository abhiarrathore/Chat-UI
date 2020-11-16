class User{
  String name;
  String imageUrl;

  User({ this.name, this.imageUrl });
}

class Chat{
  String name;
  String imageUrl;
  String msg;
  String time;

  Chat({ this.name, this.imageUrl, this.msg, this.time });
}

List menus = ['Messages', 'Online', 'Groups', 'Requests'];

List users = [
  User(
    name: 'Trisha',
    imageUrl: 'assets/images/trisha.png'
  ),
  User(
    name: 'Shiv',
    imageUrl: 'assets/images/ryan.jpg'
  ),
  User(
    name: 'Slene',
    imageUrl: 'assets/images/avatar.jpg'
  ),
  User(
    name: 'Julie',
    imageUrl: 'assets/images/julie.jpg'
  ),
  User(
    name: 'Eva',
    imageUrl: 'assets/images/eva.jpg'
  ),
];

List chats = [
  Chat(
    name: 'Trisha',
    imageUrl: 'assets/images/trisha.png',
    msg: 'Hey what are you doing?',
    time: '5:00 PM'
  ),
  Chat(
    name: 'Shiv',
    imageUrl: 'assets/images/ryan.jpg',
    msg: 'Hey what are you doing?',
    time: '5:00 PM'
  ),
  Chat(
    name: 'Slene',
    imageUrl: 'assets/images/avatar.jpg',
    msg: 'Hey what are you doing?',
    time: '5:00 PM'
  ),
  Chat(
    name: 'Julie',
    imageUrl: 'assets/images/julie.jpg',
    msg: 'Hey what are you doing?',
    time: '5:00 PM'
  ),
  Chat(
    name: 'Eva',
    imageUrl: 'assets/images/eva.jpg',
    msg: 'Hey what are you doing?',
    time: '5:00 PM'
  ),
  Chat(
    name: 'Trisha',
    imageUrl: 'assets/images/trisha.png',
    msg: 'Hey what are you doing?',
    time: '5:00 PM'
  ),
  Chat(
    name: 'Shiv',
    imageUrl: 'assets/images/ryan.jpg',
    msg: 'Hey what are you doing?',
    time: '5:00 PM'
  ),
  Chat(
    name: 'Slene',
    imageUrl: 'assets/images/avatar.jpg',
    msg: 'Hey what are you doing?',
    time: '5:00 PM'
  ),
  Chat(
    name: 'Julie',
    imageUrl: 'assets/images/julie.jpg',
    msg: 'Hey what are you doing?',
    time: '5:00 PM'
  ),
  Chat(
    name: 'Eva',
    imageUrl: 'assets/images/eva.jpg',
    msg: 'Hey what are you doing?',
    time: '5:00 PM'
  ),
];

class Message{
  String msg;
  String uid;
  String time;

  Message({ this.msg, this.uid, this.time });
}

List messages = [
  Message(msg: "Hey", uid: '1', time: '5:00 PM'),
  Message(msg: "Hello", uid: '2', time: '5:01 PM'),
  Message(msg: "How are you", uid: '1', time: '5:02 PM'),
  Message(msg: "I am fine.", uid: '2', time: '5:03 PM'),
  Message(msg: "What about you?.", uid: '2', time: '5:04 PM'),
  Message(msg: "I am doing really great but this time it was a hell lot of shit doing work on some silly things", uid: '1', time: '5:04 PM'),
  Message(msg: "You wanna grab some coffee with me this weekend...", uid: '1', time: '5:04 PM'),
  Message(msg: "No I am just good. Dont need your coffee. ", uid: '2', time: '5:04 PM'),
  Message(msg: "Good bye", uid: '1', time: '5:05 PM'),
];