import 'package:flutter/material.dart';
// write stl for short cut
class homepage extends StatelessWidget{

  const homepage ({super.key});

  @override
  // need to put the functionfrom statless 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent.shade200,title: Text("home"),
      ),//app bar of us 
      body: Column(
        children: [
          Container(
          height: 100,
        width: 200,
        color: Colors.blue.shade200,
        child: Text("menu")// the content inside the container,
          ),
           Container(
          height: 100,
        width: 200,
        color: Colors.red.shade200,
        child: Text("menu")// the content inside the container,
          )
        ],
      ),// same as dev

    );
  }
}
