part of 'product_details_cubit.dart';

abstract class ProductDetailsState {}

class ProductDetailsInitial extends ProductDetailsState {}

class ProductDifferenctColor extends ProductDetailsState {
  final int index;
  ProductDifferenctColor({required this.index});
}
