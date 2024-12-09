import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "User settings",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              width: 400,
              height: 200,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.blue.shade100, width: 4),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(Icons.person),
                        Text(
                          "  Joury Munther",
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "846",
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                      Text(
                        "51",
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                      Text(
                        "267",
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                      Text(
                        "39",
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "Collect",
                        style: TextStyle(color: Colors.white54),
                      ),
                      Text(
                        "Attention",
                        style: TextStyle(color: Colors.white54),
                      ),
                      Text(
                        "Track",
                        style: TextStyle(color: Colors.white54),
                      ),
                      Text(
                        "Coupons",
                        style: TextStyle(color: Colors.white54),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          const Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.currency_exchange),
                  Icon(Icons.card_giftcard),
                  Icon(Icons.message),
                  Icon(Icons.room_service),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("Wallet"),
                  Text("Delivery"),
                  Text("Message"),
                  Text("Service"),
                ],
              ),
            ],
          ),
               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Column(
                  
                   children: [
                     Container(
                      width: 400,
                      height: 100,
                      color: const Color.fromARGB(97, 247, 236, 236),
                      child: Card(
                          color: const Color.fromARGB(243, 255, 250, 250),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Icon(Icons.edit_location),
                              Text(" address"),
                            ],
                          ),
                      ),
                                   ),
                      Container(
                        width: 400,
                        height: 100,
                        color: const Color.fromARGB(97, 247, 236, 236),
                        child: Card(
                          color: const Color.fromARGB(243, 255, 250, 250),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Icon(Icons.privacy_tip),
                              Text(" privacy"),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: 400,
                        height: 100,
                        color: const Color.fromARGB(97, 247, 236, 236),
                        child: Card(
                          color: const Color.fromARGB(243, 255, 250, 250),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Icon(Icons.all_inbox),
                              Text(" genral"),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: 400,
                        height: 100,
                        color: const Color.fromARGB(97, 247, 236, 236),
                        child: Card(
                          color: const Color.fromARGB(243, 255, 250, 250),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Icon(Icons.notification_add),
                              Text(" notification"),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: 400,
                        height: 100,
                        color: const Color.fromARGB(97, 247, 236, 236),
                        child: Card(

                          color: const Color.fromARGB(243, 255, 250, 250),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Icon(Icons.support),
                              Text(" support"),
                            ],
                          ),
                        ),
                      ),
                   ],
                 ),
               ),
              

        ],
      ),
    );
  }
}
