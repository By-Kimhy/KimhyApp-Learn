import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp/views/detail_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(
          width: 150,
        ),
        appBar: AppBar(
          centerTitle: true,
          iconTheme: IconThemeData(color: Colors.white),
          title: Text("Kimhy App", style: TextStyle(color: Colors.white),),
          backgroundColor: Colors.blue,
          actions: [
            InkWell(
              onTap: (){
                Navigator.push(context,
                    MaterialPageRoute(
                        builder: (context)=>DetailPage())
                );
              },
              child: Container(
                  margin: EdgeInsets.only(right: 15),
                  child: Icon(Icons.notifications)
              ),
            ),
            Container(
                margin: EdgeInsets.only(right: 15),
                child: Icon(Icons.settings)
            )
          ],
        ),
        body:
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                onTap: (){
                  Navigator.push(context,
                  MaterialPageRoute(
                      builder: (context)=>DetailPage())
                  );
                },
                child: Container(
                  alignment: Alignment.center,
                  width: 200,
                  height: 150,
                  padding: EdgeInsets.all(20),
                  color: Colors.yellow,
                  child: Text("Container"),
                ),
              ),

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
              Icon(
                Icons.download,
                size: 50,
                color: Colors.green,
              ),
              ElevatedButton(onPressed: (){},
                  child: Text("Login")),
            ],
          ),
        ),
    );
  }
}