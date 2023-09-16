import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
part 'select_item_details_state.dart';

class SelectItemDetailsCubit extends Cubit<SelectItemDetailsState> {
  SelectItemDetailsCubit() : super(SelectItemDetailsInitial());

  quantityIncrease(int qty) {
    log(qty.toString());
    int increase = qty + 1;
    emit(SelectQuantity(index: increase));
  }

  quantityDecrease(int qty) {
    int decrease = qty - 1;
    emit(SelectQuantity(index: decrease));
  }

  size(int size) {
    emit(SelectSize(size: size));
  }
}
