import 'package:flutter/material.dart';
import 'package:flutter_appfr/extension/push.dart';
import 'package:flutter_appfr/pages/categories_page.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
                "https://user-images.githubusercontent.com/43726863/95706941-67b30780-0c82-11eb-8f3d-b831b7797960.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            
            const SizedBox(height: 800),
            Padding(
              padding:
                  const EdgeInsets.only(bottom: 20), 
              child: SizedBox(
                width: 150, 
                height: 50, 
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CategoriesPage(),
                      ),
                    );
                  },
                  child: const Text(
                    "get started",
                    style: TextStyle(
                      fontSize: 16, 
                      color: Color.fromARGB(255, 169, 0, 0), 
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
