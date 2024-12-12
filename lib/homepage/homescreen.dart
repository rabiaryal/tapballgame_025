import 'package:flutter/material.dart';

import 'package:pop_upanimation_025/homepage/widgets/bar.dart';
import 'package:pop_upanimation_025/homepage/widgets/button.dart';
import 'package:pop_upanimation_025/homepage/widgets/container.dart';

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
    return const Scaffold(
      backgroundColor: Color.fromARGB(100, 100, 100, 100),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 70),
            child: Column(
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    MyContainer(),
                    Positioned(top: 500, child: MyBar())
                  ],
                ),
                const SizedBox(
                  height: 10,
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
