import  'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
void main() =>runApp(MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
class Home extends StatelessWidget {
  final scaffoldKey=GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.amber,
      body:Center(
        child:
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Image(
            //   image: AssetImage('images/3.jpg'),
            // ),
            CircleAvatar(backgroundImage:AssetImage('images/3.jpg'),
              radius: 130,
            ),
            SizedBox(height:30 ,),
            Text("Farah Mohamed",style: TextStyle(fontSize:30,fontWeight:FontWeight.bold ),),
            Row(
              children:[
                SizedBox(width:60,height: 80,),
                Icon(Icons.phone),
                SizedBox(width:10),
                Text("01124165857",style: TextStyle(fontSize: 20),),
              ],
            ),
            Row(
              children:[
                SizedBox(width:60,height:60 ,),
                Icon(Icons.email),
                SizedBox(width:10),
                Text("faro7amohamed123@gmail.com",style: TextStyle(fontSize: 20),)
              ],
            ),
          ],
        ),
      ),
    );
  }
}