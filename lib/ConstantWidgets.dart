import 'package:flutter/material.dart';

/// Drawer
class Drawer1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.lightBlue[900],
      child: ListView(
        padding: EdgeInsets.only(top: 25,left: 20),
        children: <Widget>[
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: 30,
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
                ],
              ),
            ],
          ),
          SizedBox(height: 40,),
          ListTile(
            leading: Icon(Icons.add_box_rounded,color: Colors.blueGrey[200],),
            title: Text('My Health Records',style: TextStyle(fontSize: 20,color: Colors.blueGrey[200]),),
          ),
          Divider(color: Colors.blueGrey[300],thickness: 1.5,),
          SizedBox(height: 8,),
          ListTile(
            leading: Icon(Icons.add_box_rounded,color: Colors.blueGrey[200],),
            title: Text('Medical History',style: TextStyle(fontSize: 20,color: Colors.blueGrey[200]),),
          ),
          Divider(color: Colors.blueGrey[300],thickness: 1.5,),
          SizedBox(height: 8,),
          ListTile(
            leading: Icon(Icons.payment_sharp,color: Colors.blueGrey[200],),
            title: Text('Payment',style: TextStyle(fontSize: 20,color: Colors.blueGrey[200]),),
          ),
          Divider(color: Colors.blueGrey[300],thickness: 1.5,),
          SizedBox(height: 8,),
          ListTile(
            leading: Icon(Icons.add_box_rounded,color: Colors.blueGrey[200],),
            title: Text('Questions',style: TextStyle(fontSize: 20,color: Colors.blueGrey[200]),),
          ),
          Divider(color: Colors.blueGrey[300],thickness: 1.5,),
          SizedBox(height: 8,),
          ListTile(
            leading: Icon(Icons.contact_mail_rounded,color: Colors.blueGrey[200],),
            title: Text('Contact US',style: TextStyle(fontSize: 20,color: Colors.blueGrey[200]),),
          ),
          Divider(color: Colors.blueGrey[300],thickness: 1.5,),
          SizedBox(height: 8,),
          ListTile(
            leading: Image.asset('Icons/Logo_Icon.png',color: Colors.blueGrey[200],height: 25,width: 25,),
            title: Text('About US',style: TextStyle(fontSize: 20,color: Colors.blueGrey[200]),),
          ),
          Divider(color: Colors.blueGrey[300],thickness: 1.5,),
          SizedBox(height: 30,),
          ListTile(
            leading: Icon(Icons.logout,color: Colors.blueGrey[200],size: 30,),
            title: Text('Sign Out',style: TextStyle(fontSize: 20,color: Colors.blueGrey[200]),),
          ),
        ],
      ),
    );
  }
}

class ConstantWidgets{

  ///patient Main Screen boxes
   patientMainScreenBoxes(BuildContext context,title,title2,Widget myIcon){
     return GestureDetector(
       onTap: (){},
       child: Container(
         width: MediaQuery.of(context).size.width/2.5,
         height: MediaQuery.of(context).size.height/6,
         decoration: BoxDecoration(
           borderRadius: BorderRadius.circular(10.0),
           color: Colors.white,
           boxShadow: [
             BoxShadow(
                 color: Colors.grey[300],
                 blurRadius: 2.0,
                 offset: Offset(3, 4)
             )
           ]
         ),
         child: Padding(
           padding: const EdgeInsets.only(left: 1,top: 35),
           child: Center(
             child:Column(
               children: <Widget>[
                 myIcon,
                 SizedBox(height: 15),
                 Text(title,style: TextStyle(color: Colors.lightBlue[800]),),
                 SizedBox(height: 3),
                 Text(title2,style: TextStyle(color: Colors.lightBlue[800]),),
               ],
             ),
           ),
         ),
       ),
     );

   }

  ///Entry Field
   entryField(controller,title){
     return TextField(
       controller: controller,
       decoration: InputDecoration(
         hintText: title,
         hintStyle: TextStyle(
           color: Colors.grey
         )
       ),
     );
   }

   ///Button
   customButtom(title){
     return GestureDetector(
       onTap: (){},
       child: Container(
         width: 230,
         height: 45,
         child: Center(
           child: Text(
             title,
             style: TextStyle(color: Colors.white,letterSpacing: 1),
             ),
         ),
         decoration: BoxDecoration(
           borderRadius: BorderRadius.circular(10),
           color: Colors.lightBlue[900],
         ),
       ),
     );

   }

   ///login Screen Containers
   loginScreenContainer(BuildContext context,title,subtitle,{leadingWidget,trailingIcon}){
     return Container(
       width: MediaQuery.of(context).size.width,
       color: Colors.deepOrangeAccent.withOpacity(0.2),
       padding: EdgeInsets.symmetric(vertical: 2,horizontal: 0),
       child: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
         children: [
           ListTile(
             leading: leadingWidget,
             title: Text(title,style: TextStyle(color: Colors.grey[600]),),
             subtitle:Text(subtitle,style: TextStyle(color: Colors.grey[600]),),
             trailing: Icon(trailingIcon,color: Colors.lightBlue[800],),
           )
         ],
       ),
     );
   }
   ///Login Screen Titles
   loginScreenTitles(title,Widget widget){
     return Padding(
       padding: const EdgeInsets.only(left: 25,right: 25),
       child: Row(
         mainAxisAlignment: MainAxisAlignment.spaceBetween,
         children: [
           Text(title, style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
           GestureDetector(child: widget),
         ],
       ),
     );
   }

   ///Bottom Navigation Bar
   getNavBar(BuildContext context){
     return Stack(
       children: <Widget>[
         Positioned(
             bottom: 0,
             child: ClipPath(
               clipper: navBarClipper(),
               child: Container(
                 color: Colors.lightBlue[900],
                 height: 60,
                 width: MediaQuery.of(context).size.width,
               ),
             )
         )
       ],
     );
   }

 }

 class navBarClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    Path path = Path();
    var sw = size.width;
    var sh = size.height;
    path.cubicTo(5*sw/12, 0, 5*sw/12, 2*sh/5, 6*sw/12, 2*sh/5);
    // path.cubicTo(sw/12, 0, sw/12, 2*sh/5, 2*sw/12, 2*sh/5);
    // path.cubicTo(x1, y1, x2, y2, x3, y3)
    path.lineTo(sw, sh);
    path.lineTo(0, sh);
    path.close();
    return path;
    
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return false;
  }

 }

