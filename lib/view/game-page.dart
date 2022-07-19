import 'dart:math';

import 'package:flutter/material.dart';
import 'package:stone_scissors_paper/components/choices.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stone_scissors_paper/core/navigation.dart';
import 'package:stone_scissors_paper/models/moves.dart';
import 'package:stone_scissors_paper/view/home-page.dart';
import 'package:stone_scissors_paper/view/result-page.dart';

import '../blocs/cubit/cubit/game_cubit.dart';

class GamePage extends StatelessWidget {
  late GameCubit gameCubit;

  @override
  Widget build(BuildContext context) {
    gameCubit = GameCubit.get(context);
    return SafeArea(
      child: Scaffold(
        body: BlocConsumer<GameCubit, GameState>(
            listener: (cotext, GameState) {},
            builder: (context, snapshot) {
              return Container(
                padding: EdgeInsets.symmetric(horizontal: 5, vertical: 30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        GestureDetector(
                          child: Choices(Icons.square, "Rock"),
                          onTap: () {
                            gameCubit.setPlayerChoice("rock");
                            gameCubit.setComputerChoice(randomKey(moves));
                            AppNavigator.customNavigator(
                                context: context,
                                screen: ResultPage(gameCubit),
                                finish: true);
                          },
                        ),
                        GestureDetector(
                          child: Choices(Icons.cut, "Scissor"),
                          onTap: () {
                            gameCubit.setPlayerChoice("scissor");
                            gameCubit.setComputerChoice(randomKey(moves));
                            AppNavigator.customNavigator(
                                context: context,
                                screen: ResultPage(gameCubit),
                                finish: true);
                          },
                        ),
                        GestureDetector(
                          child:
                              Choices(Icons.my_library_books_rounded, "Paper"),
                          onTap: () {
                            gameCubit.setComputerChoice(randomKey(moves));
                            gameCubit.setPlayerChoice('paper');
                            AppNavigator.customNavigator(
                                context: context,
                                screen: ResultPage(gameCubit),
                                finish: true);
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              );
            }),
      ),
    );
  }
  randomKey(Map map) => map.keys.elementAt(Random().nextInt(map.length));
}
