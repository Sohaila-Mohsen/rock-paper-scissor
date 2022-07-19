part of 'game_cubit.dart';

@immutable
abstract class GameState {}

class GameInitial extends GameState {}

class PlayerChoseState extends GameState {}

class ComputerChoseState extends GameState {}
