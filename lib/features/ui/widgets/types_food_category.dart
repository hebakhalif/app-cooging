import 'package:flutter/material.dart';

class TypesFoodCategory extends StatelessWidget {
  const TypesFoodCategory({super.key});

  @override
  Widget build(BuildContext context) {
    // قائمة بالصور والنصوص
    List<Map<String, String>> foodItems = [
      {"image": "assets/images/freepik-export-20241112150200Eghd.png", "text": "Food "},
      {"image": "assets/images/freepik-export-20241112150200Eghd.png", "text": "Food "},
      {"image": "assets/images/freepik-export-20241112150200Eghd.png", "text": "Food "},
       {"image": "assets/images/freepik-export-20241112150200Eghd.png", "text": "Food "},
        {"image": "assets/images/freepik-export-20241112150200Eghd.png", "text": "Food "},
    ];

    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            for (var food in foodItems) 
              Column(
                children: [
                  Card.outlined( 
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Container(
                      height: 130,
                      width: 100,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 209, 230, 247),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Image.asset(food["image"]!), 
                    ),
                  ),
                  Text(food["text"]!), 
                ],
              ),
          ],
        ),
      ),
    );
  }
}



