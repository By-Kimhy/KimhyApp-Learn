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
        body:
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/img.png",
                  width: 200,
                ),
                Text(
                  "My App is a very good example for testing",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFF22C36),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            )


          // Image.network(
          //     "https://cdn.britannica.com/55/122155-050-56389FCC/Bayon-temple-Angkor-Thom-Cambodia.jpg")




      ),
    );
  }
}