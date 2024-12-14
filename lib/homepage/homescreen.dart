import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pop_upanimation_025/homepage/bloc/blocfor_bloc.dart';
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
  late BlocforBloc blocforBloc;

  @override
  void initState() {
    super.initState();
    blocforBloc = BlocforBloc(movingBar: Rect.fromLTWH(50, 500, 100, 20));
  }

  @override
  void dispose() {
    blocforBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => blocforBloc,
      child: Scaffold(
        backgroundColor: const Color.fromARGB(100, 100, 100, 100),
        body: SafeArea(
          child: Center(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 25.0, vertical: 30),
              child: Column(
                children: [
                  BlocBuilder<BlocforBloc, StateForBLoc>(
                    builder: (context, state) {
                      return ScoreContainer(
                        score: state.initialScore,
                      );
                    },
                  ),
                  const SizedBox(height: 20),
                  Stack(
                    alignment: Alignment.center,
                    children: [
                     MyContainer(),
                      Positioned(
                        top: 500,
                        child: MyBar(
                          barPosition: Offset(50, 500),
                          onCollision: () {
                            blocforBloc.add(CollisionWithBar(
                              position: blocforBloc.state.position,
                            ));
                          },
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  MyButton(
                    onPressed: () {
                      blocforBloc.add(ButtonPressed());
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}


// import 'package:flutter/material.dart';

// import 'package:pop_upanimation_025/homepage/widgets/bar.dart';
// import 'package:pop_upanimation_025/homepage/widgets/button.dart';
// import 'package:pop_upanimation_025/homepage/widgets/container.dart';
// import 'package:pop_upanimation_025/homepage/widgets/scoreContainer.dart';

// class Homescreen extends StatefulWidget {
//   const Homescreen({super.key});

//   @override
//   State<Homescreen> createState() => _HomescreenState();
// }

// class _HomescreenState extends State<Homescreen> {
//   Widget _callFunction() {
//     return Text("hello");
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Color.fromARGB(100, 100, 100, 100),
//       body: SafeArea(
//         child: Center(
//           child: Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 30),
//             child: Column(
//               children: [
//                 ScoreContainer(),
//             const    SizedBox(
//                   height: 20,
//                 ),
//               const   Stack(
//                   alignment: Alignment.center,
//                   children: [
//                     MyContainer(),
//                     Positioned(top: 500, child: MyBar())
//                   ],
//                 ),
//                 const SizedBox(
//                   height: 20,
//                 ),
//                 MyButton(),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
