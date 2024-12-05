import 'package:flutter/material.dart';
import 'package:flutter_day1_intro/pages/page2.dart';

class page1 extends StatelessWidget {
  const page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 83, 143, 255),
        title: const Text("game page"),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 50,left:50),
        child: Container(
          width: 300,
          height: 500,
          color: Colors.blue.shade100,
          margin: const EdgeInsets.only(top: 29,left: 10),
          padding: const EdgeInsets.only(top: 20,left: 10),
          child: Column(
            children: [ // the text style
              const Text("pick an icon",
              style: TextStyle(
                color: Color.fromARGB(255, 255, 255, 255), fontSize: 40, fontWeight: FontWeight.bold
              )),
                // from left to write
              Row(
                // the space between them 
                mainAxisAlignment:MainAxisAlignment.spaceAround ,
                children: [
                  const Icon(Icons.girl),
                 const  Icon(Icons.boy)
                ],
              ),
              Row(
                mainAxisAlignment:MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                        onPressed: () {Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Page2()));
                         }, child:Text("girl") ,),ElevatedButton(
                        onPressed: () {Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Page2()));
                         }, child:Text("boy") ,)
                ],
              ),
            ],

          )
          
        ),
      ),
    );
  }
}