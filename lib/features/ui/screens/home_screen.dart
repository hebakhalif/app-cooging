import 'package:app_cooging/core/constants/space.dart';
import 'package:app_cooging/features/ui/screens/splash_screen.dart';
import 'package:app_cooging/features/ui/widgets/types_food_category.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 217, 236, 252),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 217, 236, 252),
        leading: IconButton(
            onPressed: () {
                Navigator.push(
               context,
               MaterialPageRoute(
                builder: (context) => SplashScreen()));
          },
            icon: Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color.fromARGB(97, 205, 201, 201)),
                child: const Icon(Icons.arrow_back))),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.card_giftcard))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 30, top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Let's finds the best \n food around you ",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            Space.vertical(35),
            const Padding(
              padding: EdgeInsets.all(9.0),
              child: Row(
                children: [
                  Text(
                    "Find by Category",
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                  Spacer(
                    flex: 1,
                  ),
                  Text(
                    "See All",
                    style: TextStyle(color: Color.fromARGB(255, 201, 155, 19)),
                  ),
                ],
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}

