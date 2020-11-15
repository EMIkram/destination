import 'package:flutter/material.dart';

import 'ConstantWidgets.dart';
import 'PatientHomeScreen.dart';

ConstantWidgets constantWidgets = ConstantWidgets();

class AccountInfo extends StatefulWidget {
  @override
  _AccountInfoState createState() => _AccountInfoState();
}

class _AccountInfoState extends State<AccountInfo> {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
         child: Container(
           color: Colors.white54,
           child: Column(
             children: [
               /// App bar
               Container(
                 padding: EdgeInsets.symmetric(vertical: 5,horizontal: 20),
                 child: Column(
                   crossAxisAlignment: CrossAxisAlignment.end,
                   children: [
                     IconButton(
                       icon: Icon(Icons.menu,size: 30,),
                       onPressed: (){scaffoldKey.currentState.openEndDrawer();},
                       color: Colors.lightBlue[800],
                     ),
                     Row(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         Container(
                           decoration: BoxDecoration(
                             color: Colors.white,
                             shape: BoxShape.circle,
                             boxShadow: [
                               BoxShadow(blurRadius:3, color: Colors.grey[200], spreadRadius: 5)
                             ],
                           ),
                           child: CircleAvatar(
                             radius: 40,
                             backgroundColor: Colors.white,
                             child: Icon(Icons.perm_identity,color: Colors.lightBlue[900],size: 40,),
                           ),
                         ),
                         SizedBox(width: 25,),
                         Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: <Widget>[
                             Text('Mr. John Doe',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                             SizedBox(height: 13,),
                             Text('Patient', style: TextStyle(fontSize: 18),),
                             SizedBox(height: 13,),
                             GestureDetector(child: Text('Edit Profile',style: TextStyle(decoration: TextDecoration.underline,fontSize: 13,color: Colors.lightBlue[800]))),
                           ],
                         )
                       ],
                     ),
                   ],
                 ),
               ),
               SizedBox(height: 30,),
               /// body
               constantWidgets.loginScreenTitles('ADDRESS',Icon(
                 Icons.edit,
                 color: Colors.lightBlue[800],)),
               SizedBox(height: 15,),
               constantWidgets.loginScreenContainer(context,'A 12/5, New Villa Tower' , 'New York, NY, USA -12345'),
               SizedBox(height: 30,),
               constantWidgets.loginScreenTitles('HEALTH APP',Text('Change App',style: TextStyle(decoration: TextDecoration.underline,fontSize: 13,color: Colors.lightBlue[800]))),
               SizedBox(height: 15,),
               constantWidgets.loginScreenContainer(context,'Google -Fit' , 'John.doe@gmail.com',leadingWidget: Image.asset('Icons/google-fit.png',width: 30,height: 30,),trailingIcon: Icons.edit),
               SizedBox(height: 30,),
               constantWidgets.loginScreenTitles('FAMILY MEMBERS',Icon(Icons.add_circle,color: Colors.lightBlue[800],)),
               SizedBox(height: 15,),
               Container(
                 width: MediaQuery.of(context).size.width,
                 color: Colors.deepOrangeAccent.withOpacity(0.2),
                 padding: EdgeInsets.only(left: 60,right: 15,top: 2,bottom: 2),
                   child: Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(text: 'Wife',style: TextStyle(color: Colors.grey[600]),
                                    ),
                                    TextSpan(text: ' -Julia Doe',style: TextStyle(color: Colors.grey[900],fontWeight: FontWeight.bold),
                                    )
                                  ]
                                ),
                              ),
                              IconButton(icon: Icon(Icons.edit,color: Colors.lightBlue[800],), onPressed: (){})
                            ],
                          ),
                       // SizedBox(height: 2,),
                       Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(text: 'Son',style: TextStyle(color: Colors.grey[600]),
                                    ),
                                    TextSpan(text: ' -Rayan Doe',style: TextStyle(color: Colors.grey[900],fontWeight: FontWeight.bold),
                                    )
                                  ]
                                ),
                              ),
                              IconButton(icon: Icon(Icons.edit,color: Colors.lightBlue[800],), onPressed: (){})
                            ],
                          )
      ],
      ),
      ),



             ],
           ),
         ),
      ),
      endDrawer: Drawer(
        child: Drawer1(),
      )//destination screen

    );
  }
}
