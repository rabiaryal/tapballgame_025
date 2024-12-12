import 'package:flutter/material.dart';
import 'package:pop_upanimation_025/homepage/homescreen.dart';
import 'package:pop_upanimation_025/homepage/widgets/ball.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home:
            //  MovingBall()

            Homescreen());
  }
}
