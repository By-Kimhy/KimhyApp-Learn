import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {

  @override
  State<DetailPage> createState() => _DetailPageState();
}
class _DetailPageState extends State<DetailPage> {
  var listData=[
    {
      "id":"001",
      "name":"Kim",
      "address":"PP"
    },
    {
      "id":"002",
      "name":"Khmer",
      "address":"TK"
    },
    {
      "id":"003",
      "name":"lita",
      "address":"KPC"
    },
    {
      "id":"004",
      "name":"Liitaa",
      "address":"KPC"
    }
  ];

  @override
  void dispose() {
    // TODO: implement dispose
    print("=============Dispose");
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Detail Information", style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.blue,
        leading: GestureDetector(
          onTap: (){
            Navigator.pop(context);
          },
            child: Icon(Icons.arrow_back_ios)),
            iconTheme: IconThemeData(color: Colors.white),
      ),
      body:
        GridView.builder(
            itemCount: listData.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              mainAxisSpacing: 5,
            ),
            itemBuilder: (context,int index){
              return itemUser(listData[index]);
            }

        )
      // ListView.builder(
      //   itemCount: listData.length,
      //     itemBuilder: (BuildContext context,int index){
      //       return itemUser(listData[index]);
      //     }
      // )
    );
  }
}

Widget itemUser(var data){
  return Container(
    margin: EdgeInsets.only(left: 5,right: 5,top: 5),
    height: 20,
    color: Colors.blue,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("ID : ${data["id"]}",style: TextStyle(color: Colors.white),),
        Text("Name : ${data["name"]}",style: TextStyle(color: Colors.white),),
        Text("Address : ${data["address"]}",style: TextStyle(color: Colors.white),),
      ],
    )
  );
}