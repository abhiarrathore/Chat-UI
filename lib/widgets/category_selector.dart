import 'package:flutter/material.dart';
import 'package:chatui/models/data.dart';

class CategorySelector extends StatefulWidget {
  @override
  _CategorySelectorState createState() => _CategorySelectorState();
}

class _CategorySelectorState extends State<CategorySelector> {
  int selectedIndex = 0;
  
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: Theme.of(context).primaryColor,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: menus.length,
        itemBuilder: (BuildContext context, int index){
          return GestureDetector(
            onTap: (){
              setState(() {
                selectedIndex = index;
              });
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30.0),
              child: Text(
                menus[index],
                style: TextStyle(
                  color: selectedIndex == index ? Colors.white : Colors.white60,
                  fontSize: 18,
                  letterSpacing: 1.2
                ),
              ),
            ),
          );
        }
      )
    );
  }
}