import 'package:app_cooging/features/ui/screens/splash_screen.dart';
import 'package:app_cooging/features/ui/widgets/types_food_category.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(374, 812),
      minTextAdapt: true,
      builder: (context, child) {
    return const MaterialApp(
       debugShowCheckedModeBanner: false,
       home: SplashScreen(), 
       );
      },
    );
  }
}
