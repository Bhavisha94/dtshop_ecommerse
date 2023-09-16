import 'package:flutter_bloc/flutter_bloc.dart';

part 'cart_track_state.dart';

class CartTrackCubit extends Cubit<CartTrackState> {
  CartTrackCubit() : super(CartTrackInitial());

  selectedIndex(int index) {
    emit(CartTrackIndex(index: index));
  }
}
