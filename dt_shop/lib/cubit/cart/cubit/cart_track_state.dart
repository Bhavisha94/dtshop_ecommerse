part of 'cart_track_cubit.dart';

abstract class CartTrackState {}

class CartTrackInitial extends CartTrackState {}

class CartTrackIndex extends CartTrackState {
  final int index;
  CartTrackIndex({required this.index});
}
