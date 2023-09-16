part of 'intro_cubit.dart';

abstract class IntroState {}

class IntroInitial extends IntroState {}

class IntroPageChanged extends IntroState {
  final int pageNo;
  IntroPageChanged({required this.pageNo});
}
