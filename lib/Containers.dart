import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    title: 'puzzle',
    home: Containers(),
  ));
}

class Containers extends StatefulWidget {
  @override
  _ContainersState createState() => new _ContainersState();
}

class _ContainersState extends State<Containers> {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Container(),
    );
  }
}
