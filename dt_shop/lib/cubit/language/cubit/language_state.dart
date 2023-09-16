part of 'language_cubit.dart';

abstract class LanguageState {}

class LanguageInitial extends LanguageState {}

class LanguageSelection extends LanguageState {
  final int index;
  LanguageSelection({required this.index});
}
