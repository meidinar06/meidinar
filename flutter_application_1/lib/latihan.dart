import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text('Latihan'),
        ),
        body: ContainerLayout(),
      ),
    );
  }
}

class ContainerLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 100,
                height: 100,
                color: Colors.red[200],
                margin: EdgeInsets.all(30),
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.red[200],
                margin: EdgeInsets.all(30),
              ),
            ],
          ),
          Container(
            width: 100,
            height: 100,
            color: Colors.red[200],
            margin: EdgeInsets.all(30),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 100,
                height: 100,
                color: Colors.red[200],
                margin: EdgeInsets.all(30),
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.red[200],
                margin: EdgeInsets.all(30),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
