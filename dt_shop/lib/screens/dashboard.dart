import 'package:dt_shop/cubit/bottom_item/cubit/bottom_bar_item_cubit.dart';
import 'package:dt_shop/screens/cart.dart';
import 'package:dt_shop/screens/category.dart';
import 'package:dt_shop/screens/explore.dart';
import 'package:dt_shop/screens/home.dart';
import 'package:dt_shop/screens/proflie.dart';
import 'package:dt_shop/widgets/bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int selectedIndex = 0;
  List<Widget> list = const [Home(), Category(), Explore(), Cart(), Profile()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BlocListener<BottomBarItemCubit, BottomBarItemState>(
        listener: (context, state) {
          if (state is BottomBarItemIndex) {
            selectedIndex = state.index;
          }
        },
        child: BottomBaarWidget(
          selectedIndex: selectedIndex,
        ),
      ),
      body: BlocBuilder<BottomBarItemCubit, BottomBarItemState>(
        builder: (context, state) {
          return list[selectedIndex];
        },
      ),
    );
  }
}
