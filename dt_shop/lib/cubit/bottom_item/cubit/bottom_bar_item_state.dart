part of 'bottom_bar_item_cubit.dart';

abstract class BottomBarItemState {}

class BottomBarItemInitial extends BottomBarItemState {}

class BottomBarItemIndex extends BottomBarItemState {
  final int index;
  BottomBarItemIndex({required this.index});
}
