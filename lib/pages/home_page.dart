import 'package:flutter/material.dart';
import 'package:flutter_day1_intro/pages/page2.dart';

// write stl for short cut
class homepage extends StatelessWidget {
  const homepage({super.key});

  @override
  // need to put the functionfrom statless
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [
          Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            Icon(
              Icons.menu_book,
              color: Color.fromARGB(255, 28, 14, 116),
            ),
          ])
        ],
        backgroundColor: Colors.blueAccent.shade200,
        title: Text("welecome"),
      ), //app bar of us
      body: Padding(
        padding: const EdgeInsets.only(top: 30, left: 20),
        child: Container(
            height: 500,
            width: 400,
            color: const Color.fromARGB(255, 130, 199, 255),
            child: Column(
              children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Icon(Icons.games_sharp),
                      const Text(
                        "click to play",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Page2()));
                        },
                        child: const Text("play"),
                      ),
                    ]),
                
              ],
            )),
      ), // same as dev
    );
  }
}
