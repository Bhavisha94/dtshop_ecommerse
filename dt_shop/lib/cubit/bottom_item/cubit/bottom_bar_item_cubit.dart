import 'package:flutter_bloc/flutter_bloc.dart';
part 'bottom_bar_item_state.dart';

class BottomBarItemCubit extends Cubit<BottomBarItemState> {
  BottomBarItemCubit() : super(BottomBarItemInitial());

  selectedIndex(int index) {
    emit(BottomBarItemIndex(index: index));
  }
}
