// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: Home()));

// ignore: use_key_in_widget_constructors
class Home extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My First Flutter App"),
        backgroundColor: Colors.red[600],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,

        children: [       
        Expanded(flex: 1, child: Image.asset("assets/lee.jpg")),
        
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
          Text("Row 1"),
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.grey,
              padding: EdgeInsets.symmetric(),
              child: Text("Container 1"),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.amber,
              padding: EdgeInsets.symmetric(),
              child: Text("Container 2"),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.blue,
              padding: EdgeInsets.symmetric(),
              child: Text("Container 3"),
            ),
          ),
          
        ],),
        
      ],),
      floatingActionButton: FloatingActionButton(
        child: const Text("Click"),
        onPressed: () {},
      ),
    );
  }
}
