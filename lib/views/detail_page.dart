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
      body: ListView.builder(
        itemCount: listData.length,
          itemBuilder: (BuildContext context,int index){
            return itemUser(listData[index]);
          }
      )
    );
  }
}

Widget itemUser(var data){
  return Container(
    margin: EdgeInsets.only(left: 10,right: 10,top: 10),
    height: 100,
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