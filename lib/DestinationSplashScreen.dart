import 'package:flutter/material.dart';

class DestinationSplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
         children: <Widget>[
           Container(
             color: Colors.lightBlue,
             width: MediaQuery.of(context).size.width,
             height: MediaQuery.of(context).size.height,
           ),
           Center(
             child: Image.asset('images/Destinationlogo (1).png'),
           ),
         ],

      ),
    );
  }
}
