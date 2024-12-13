import 'package:flutter/material.dart';

import 'package:pop_upanimation_025/homepage/widgets/bar.dart';
import 'package:pop_upanimation_025/homepage/widgets/button.dart';
import 'package:pop_upanimation_025/homepage/widgets/container.dart';
import 'package:pop_upanimation_025/homepage/widgets/scoreContainer.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  Widget _callFunction() {
    return Text("hello");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(100, 100, 100, 100),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 30),
            child: Column(
              children: [
                ScoreContainer(),
            const    SizedBox(
                  height: 20,
                ),
              const   Stack(
                  alignment: Alignment.center,
                  children: [
                    MyContainer(),
                    Positioned(top: 500, child: MyBar())
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                MyButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
