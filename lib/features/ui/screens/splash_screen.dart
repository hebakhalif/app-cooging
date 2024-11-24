import 'package:app_cooging/core/constants/space.dart';
import 'package:app_cooging/features/ui/screens/home_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 217, 236, 252), 
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset("assets/images/freepik-export-20241112150200Eghd.png",
            height: 430,
            width: 430,
            ), 
             Space.vertical(40),
             Padding(
               padding: const EdgeInsets.only(left: 40),
               child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                    const Text("Grab your\nDelicius food !",
               maxLines: 2,
               style: TextStyle(fontSize: 25,
               fontWeight: FontWeight.bold,
               ),
               ),
                Space.vertical(20),
               
               /* MaterialButton(onPressed: (){ },
                color: Color.fromARGB(255, 171, 230, 253),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                minWidth: MediaQuery.of(context).size.width -70,
                child: Center(
                  child: Text("data",
                  style: TextStyle(fontSize: 24),
                  ),
                ),
                ),*/
               
                const Text("Delivery food in your phone"),
               
                    Space.vertical(20),
               Padding(
                 padding: const EdgeInsets.only(right: 30),
                 child: ElevatedButton(onPressed: (){
                   Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const HomeScreen()));
                 },
                 style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 171, 230, 253),
                  minimumSize: const Size(400,50),
                 ), 
                 child: const Text("Get started",
                 style: TextStyle(fontSize: 24),
                 )
                 ),
               )
                ],
               ),
             )
           
          ],
        ),
    );
  }
}