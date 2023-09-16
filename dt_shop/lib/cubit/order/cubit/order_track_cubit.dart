import 'package:flutter_bloc/flutter_bloc.dart';

part 'order_track_state.dart';

class OrderTrackCubit extends Cubit<OrderTrackState> {
  OrderTrackCubit() : super(OrderTrackInitial());

  selectedOrderIndex(int idx) {
    emit(OrderTrackIndex(index: idx));
  }
}
