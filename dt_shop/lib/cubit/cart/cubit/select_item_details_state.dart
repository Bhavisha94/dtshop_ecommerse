part of 'select_item_details_cubit.dart';

abstract class SelectItemDetailsState {}

class SelectItemDetailsInitial extends SelectItemDetailsState {}

class SelectQuantity extends SelectItemDetailsState {
  final int index;

  SelectQuantity({
    required this.index,
  });
}

class SelectSize extends SelectItemDetailsState {
  final int size;
  SelectSize({required this.size});
}
