import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:stone_scissors_paper/components/choices.dart';
import 'package:stone_scissors_paper/core/navigation.dart';
import 'game-page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.asset('assets/lottie/stone.json'),
            GestureDetector(
              child: Choices(Icons.play_arrow_rounded, "Play"),
              onTap: () {
               Navigator.push(context, MaterialPageRoute( builder: (BuildContext context)=>GamePage()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
