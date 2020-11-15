import 'package:destination_healthcare/PatientHomeScreen.dart';
import 'package:flutter/material.dart';

class PatientProfileScreen extends StatelessWidget {
  TextEditingController emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.blue[50],
        child: Padding(
          padding: const EdgeInsets.only(top:54.0,left: 35.0,right: 35.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Icon(Icons.arrow_back),
              SizedBox(height: 20,),
              Text('Complete your profile as patient',style: TextStyle(fontSize: 35),),
              SizedBox(height: 20,),
              constantWidgets.entryField(emailController, 'First Name'),
              SizedBox(height: 20,),
              constantWidgets.entryField(emailController, 'Last Name'),
              SizedBox(height: 20,),
              constantWidgets.entryField(emailController, 'Email'),
              SizedBox(height: 20,),
              constantWidgets.entryField(emailController, 'SSN/ DL/ Or National ID'),
              SizedBox(height: 45,),
              Center(
                child: constantWidgets.customButtom('SUBMIT'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
