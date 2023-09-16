import 'package:flutter_bloc/flutter_bloc.dart';
part 'category_item_state.dart';

class CategoryItemCubit extends Cubit<CategoryItemState> {
  CategoryItemCubit() : super(CategoryItemInitial());

  selectedIndex(int index) {
    emit(CategoryItemSelectedIndex(index: index));
  }
}
