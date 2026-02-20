import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        drawer: Drawer(
          width: 150,
        ),
        appBar: AppBar(
          centerTitle: true,
          iconTheme: IconThemeData(color: Colors.white),
          title: Text("Kimhy App", style: TextStyle(color: Colors.white),),
          backgroundColor: Colors.blue,
          actions: [
            Container(
                margin: EdgeInsets.only(right: 15),
                child: Icon(Icons.notifications)
            ),
            Container(
                margin: EdgeInsets.only(right: 15),
                child: Icon(Icons.settings)
            )
          ],
        ),
        body: Text("My App"),
      ),
    );
  }
}