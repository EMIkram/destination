import 'package:destination_healthcare/ConstantWidgets.dart';
import 'package:flutter/material.dart';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/widgets.dart';

ConstantWidgets constantWidgets = ConstantWidgets();

class PatientHomeScreen extends StatefulWidget {
  @override
  _PatientHomeScreenState createState() => _PatientHomeScreenState();
}

class _PatientHomeScreenState extends State<PatientHomeScreen> {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: scaffoldKey,
        body: Stack(
            children: [
              Column(
                children: [
                  ///blue
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height/4,
                    color: Colors.lightBlue[900],
                  ),
                  ///white
                  SingleChildScrollView(
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height/1.35,  /// ToDo: set this later
                      color: Colors.white54,
                    ),
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 5,horizontal: 20),
                child: Column(
                  children: [
                    /// App bar
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        IconButton(
                          icon: Icon(Icons.menu,size: 30,),
                          onPressed: (){scaffoldKey.currentState.openEndDrawer();},
                          color: Colors.white,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CircleAvatar(
                              radius: 40,
                              backgroundColor: Colors.white,
                              child: Icon(Icons.perm_identity,color: Colors.lightBlue[900],size: 40,),
                            ),
                            SizedBox(width: 25,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text('Mr. John Doe',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),),
                                SizedBox(height: 13,),
                                Text('Patient', style: TextStyle(color: Colors.cyan[100],fontSize: 18),),
                                SizedBox(height: 13,),
                                GestureDetector(child: Text('Edit Profile',style: TextStyle(decoration: TextDecoration.underline,fontSize: 13,color: Colors.white))),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 10,),
                    /// My Prescriptions Button
                    Center(
                      child: RaisedButton(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18),
                        ),
                        child: Text('My Prescriptions',style: TextStyle(color: Colors.lightBlue[800],fontWeight: FontWeight.normal),),
                        onPressed: (){},
                      ),
                    ),
                    /// body
                    Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height/1.5,  /// ToDo: set this later
                        color: Colors.white54,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                constantWidgets.patientMainScreenBoxes(context,'Upcoming','Appointments',Icon(Icons.medical_services,color: Colors.lightBlue[900])),
                                SizedBox(width: 12,),
                                constantWidgets.patientMainScreenBoxes(context,'My','Doctors',Icon(Icons.invert_colors,color: Colors.lightBlue[900])),
                              ],
                            ),
                            SizedBox(height: 16,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                constantWidgets.patientMainScreenBoxes(context,"My Doctor's",'Conversion',Icon(Icons.invert_colors,color: Colors.lightBlue[900])),
                                SizedBox(width: 12,),
                                constantWidgets.patientMainScreenBoxes(context,'My Health','Records',Icon(Icons.invert_colors,color: Colors.lightBlue[900])),
                              ],
                            ),
                          ],
                        )
                    )
                  ],
                ),
              ),
            ]
        ),
        endDrawer: Drawer(
          child: Drawer1(),
        )//destination screen


      /*floatingActionButton: FloatingActionButton(
        //params
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar(
        icons: iconList,
        activeIndex: _bottomNavIndex,
        gapLocation: GapLocation.center,
        notchSmoothness: NotchSmoothness.verySmoothEdge,
        leftCornerRadius: 32,
        rightCornerRadius: 32,
        onTap: (index) => setState(() => _bottomNavIndex = index),
        //other params
      ),*/
    );
  }
}