// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: Home()));

// ignore: use_key_in_widget_constructors
class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text("My First Flutter App"),
          backgroundColor: Colors.red[600],
          actions: [
            IconButton(
              icon: Icon(
                Icons.search,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(
                Icons.favorite,
              ),
              onPressed: () {},
            )
          ]),
      body: Padding(
        padding: EdgeInsets.all(15.0),
        child: Column(children: [
          Text("Row $_counter"),
          Row(children: [
            Center(
              child: CircleAvatar(
                child: Image.asset("assets/luca.jpg"),
                radius: 100.0,
              ),
            ),
          ]),
          Row(children: [
            Text("Row $_counter"),
            Container(
              color: Colors.green,
              child: Text("Container 1"),
            ),
            Icon(
              Icons.photo_camera,
            ),
            Container(
              color: Colors.amber,
              child: Text("Container 2"),
            ),
            Container(
              color: Colors.blue,
              child: Text("Container 3"),
            ),
          ]),
        ]),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Text("Click"),
        onPressed: () {
          setState(() {
            _counter++;
          });
        },
      ),
    );
  }
}
