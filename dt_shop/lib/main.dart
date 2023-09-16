import 'package:dt_shop/cubit/bottom_item/cubit/bottom_bar_item_cubit.dart';
import 'package:dt_shop/cubit/cart/cubit/cart_track_cubit.dart';
import 'package:dt_shop/cubit/cart/cubit/select_item_details_cubit.dart';
import 'package:dt_shop/cubit/category/cubit/category_item_cubit.dart';
import 'package:dt_shop/cubit/explore/cubit/category_checkbox_cubit.dart';
import 'package:dt_shop/cubit/introscreen/cubit/intro_cubit.dart';
import 'package:dt_shop/cubit/language/cubit/language_cubit.dart';
import 'package:dt_shop/cubit/order/cubit/order_track_cubit.dart';
import 'package:dt_shop/cubit/product_details/cubit/product_details_cubit.dart';
import 'package:dt_shop/screens/splashscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<IntroCubit>(create: (_) => IntroCubit()),
        BlocProvider<BottomBarItemCubit>(create: (_) => BottomBarItemCubit()),
        BlocProvider<OrderTrackCubit>(
          create: (_) => OrderTrackCubit(),
        ),
        BlocProvider<LanguageCubit>(create: (_) => LanguageCubit()),
        BlocProvider<CategoryItemCubit>(create: (_) => CategoryItemCubit()),
        BlocProvider<CategoryCheckboxCubit>(
            create: (_) => CategoryCheckboxCubit()),
        BlocProvider<SelectItemDetailsCubit>(
          create: (_) => SelectItemDetailsCubit(),
        ),
        BlocProvider<CartTrackCubit>(create: (_) => CartTrackCubit()),
        BlocProvider<ProductDetailsCubit>(
          create: (_) => ProductDetailsCubit(),
        )
      ],
      child: MaterialApp(
        title: 'Shop',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const Splashscreen(),
      ),
    );
  }
}
