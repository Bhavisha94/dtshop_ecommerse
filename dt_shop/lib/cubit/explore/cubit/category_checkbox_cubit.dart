import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
part 'category_checkbox_state.dart';

class CategoryCheckboxCubit extends Cubit<CategoryCheckboxState> {
  CategoryCheckboxCubit() : super(CategoryCheckboxInitial());

  checked(int index, bool categoryCheckbox) {
    log(categoryCheckbox.toString());
    emit(CategoryCheckboxSelected(
        index: index, checkboxValue: categoryCheckbox));
  }
}
