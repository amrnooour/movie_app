import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/core/utils/app_assets.dart';
import 'package:movie_app/features/home/presentation/cubit/home_cubit.dart';
import 'package:movie_app/features/home/presentation/cubit/home_states.dart';

class CustomBottomNav extends StatelessWidget {
  const CustomBottomNav({super.key});

  @override
  Widget build(BuildContext context) {
    var cubit = context.read<HomeCubit>();
    return BlocBuilder<HomeCubit,HomeStates>(
      builder: (context, state) {
        return BottomNavigationBar(
          currentIndex: cubit.currentIndex,
          onTap: (index) {
            cubit.changeBottomNavIndex(index);
          },
          selectedItemColor: Colors.yellow,
          unselectedItemColor: Colors.white,
          showUnselectedLabels: true,
          items: [
            buildBottomNavItem(
            cubit.currentIndex==0,
             Image.asset(AppAssets.homeIcon),
              Image.asset(AppAssets.homeSelected),
               "Home"),
               buildBottomNavItem(
            cubit.currentIndex==1,
             Image.asset(AppAssets.searchIcon),
              Image.asset(AppAssets.searchSelected),
               "Search"),
               buildBottomNavItem(
            cubit.currentIndex==2,
             Image.asset(AppAssets.browseIcon),
              Image.asset(AppAssets.browsrSelected),
               "browse"),
               buildBottomNavItem(
            cubit.currentIndex==3,
             Image.asset(AppAssets.watchListIcon),
              Image.asset(AppAssets.watchListSelected),
               "Watch List"),
               ]);
      },
    );
  }

  buildBottomNavItem(
      bool isSelected, Widget icon, Widget iconActive, String label) {
    return BottomNavigationBarItem(
        icon: isSelected ? iconActive : icon, label: label);
  }
}
