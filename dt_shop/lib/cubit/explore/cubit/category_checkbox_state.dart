part of 'category_checkbox_cubit.dart';

abstract class CategoryCheckboxState {}

class CategoryCheckboxInitial extends CategoryCheckboxState {}

class CategoryCheckboxSelected extends CategoryCheckboxState {
  final int index;
  final bool checkboxValue;
  CategoryCheckboxSelected({required this.index, required this.checkboxValue});
}
