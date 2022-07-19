import 'package:flutter/material.dart';
import 'package:stone_scissors_paper/view/splash-screen.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../blocs/cubit/cubit/game_cubit.dart';


class AppRoot extends StatelessWidget {
  const AppRoot({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => GameCubit(),
        ),
        
      ],
      child: MaterialApp(
        home: SplachScreen(),
      ),
    );
  }
}