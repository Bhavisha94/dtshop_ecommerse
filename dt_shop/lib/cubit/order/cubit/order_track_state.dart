part of 'order_track_cubit.dart';

abstract class OrderTrackState {}

class OrderTrackInitial extends OrderTrackState {}

class OrderTrackIndex extends OrderTrackState {
  final int index;
  OrderTrackIndex({required this.index});
}
