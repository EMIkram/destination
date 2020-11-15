import 'package:flutter/material.dart';

class Destination2ndScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.blue[50],
        child: Column(
          children: <Widget>[
            Center(
              child: Image.asset('images/Destinationlogo (1).png',),
            )
          ],
        ),
      ),
    );
  }
}
