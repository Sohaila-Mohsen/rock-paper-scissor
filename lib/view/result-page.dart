import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:stone_scissors_paper/blocs/cubit/cubit/game_cubit.dart';
import 'package:stone_scissors_paper/components/choices.dart';
import 'package:stone_scissors_paper/core/navigation.dart';
import 'package:stone_scissors_paper/view/game-page.dart';
import '../models/moves.dart';

class ResultPage extends StatelessWidget {
  GameCubit gameCubit;

  ResultPage(this.gameCubit);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Lottie.asset(gameCubit.detrnimeWinner()!),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Choices(moves[gameCubit.playerChoice], 'You'),
                // Icon( moves[gameCubit.playerChoice],size: 80,color: Color.fromARGB(255, 129, 218, 215) ,),
                const Text(
                  'VS',
                  style: TextStyle(fontSize: 20, color: Colors.grey),
                ),
                Choices(moves[gameCubit.computerChoice], 'Computer')
                //Icon(moves[gameCubit.computerChoice],size: 80,color: Color.fromARGB(255, 129, 218, 215) ,)
              ],
            ),
            if (gameCubit.detrnimeWinner()!.contains('winner'))
              const Text(
                'Winner',
                style: TextStyle(fontSize: 30, color: Colors.grey),
              )
            else
              const Text(
                'Good Luck',
                style: TextStyle(fontSize: 25, color: Colors.grey),
              ),
            OutlinedButton(
              onPressed: () {
                AppNavigator.customNavigator(
                    context: context, screen: GamePage(), finish: true);
              },
              child: const Text(
                'Play Again',
                style: TextStyle(
                    fontSize: 20, color: Color.fromARGB(255, 47, 147, 144)),
              ),
              style: ButtonStyle(
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
