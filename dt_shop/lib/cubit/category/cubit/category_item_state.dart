part of 'category_item_cubit.dart';

abstract class CategoryItemState {}

class CategoryItemInitial extends CategoryItemState {}

class CategoryItemSelectedIndex extends CategoryItemState {
  final int index;
  CategoryItemSelectedIndex({required this.index});
}
