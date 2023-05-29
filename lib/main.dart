import 'package:flutter/material.dart';
import 'mainpage.dart';

void main() {
  runApp(web());
}

class web extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.grey,
          elevation: 10,
          title: Text(
            'Educational websites',
            style: TextStyle(
                letterSpacing: 2,
                fontWeight: FontWeight.normal,
                wordSpacing: 2),
          ),
        ),
        body: Home(),
      ),
    );
  }
}
