import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp/views/detail_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool status=false;

  // initSate mostly use to request API
  @override
  void initState() {
    print("---------------Initstate");
    super.initState();
  }

  @override
  void didChangeDependencies() {
    print("---------------didChangeDependencies");
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    print("-----------Build");
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

              Stack(
                children: [
                  Image.asset(
                    "assets/img.png",
                    width: 400,
                  ),
                  Container(
                    width: 300,height: 100,color: Colors.red,
                  ),
                  Positioned(
                    bottom: 10,
                    right: 20,
                    child: Text("Angkor Wat",
                      style: TextStyle(color: Colors.white,fontSize: 50),
                    ),
                  )
                ],
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
              InkWell(
                onTap: (){
                  setState(() {
                    status = !status;
                  });
                  print("Status : $status");
                },
                child: Icon(
                  Icons.download,
                  size: 100,
                  color: status ? Colors.green : Colors.pink,
                ),
              ),
              ElevatedButton(onPressed: (){},
                  child: Text("Login")),
            ],
          ),
        ),
    );
  }
}