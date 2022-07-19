import 'package:meta/meta.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';
part 'game_state.dart';

class GameCubit extends Cubit<GameState> {
  GameCubit() : super(GameInitial());
  static GameCubit get(context) => BlocProvider.of(context);
  String? computerChoice;
  String? playerChoice;

  void setPlayerChoice(String c) {
    playerChoice = c;
    emit(PlayerChoseState());
  }

  void setComputerChoice(String c) {
    computerChoice = c;
    emit(ComputerChoseState());
  }

  String? detrnimeWinner() {
    if ((computerChoice == "scissor" && playerChoice == "paper") ||
        (computerChoice == "rock" && playerChoice == "scissor") ||
        (computerChoice == "paper" && playerChoice == "rock"))
      return 'assets/lottie/losser.json';
    else if(computerChoice==playerChoice)
      return 'assets/lottie/equal.json';
    return 'assets/lottie/winner.json';
  }
}
