import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/core/utils/constants.dart';
import 'package:movie_app/features/home/presentation/cubit/home_cubit.dart';
import 'package:movie_app/features/home/presentation/cubit/home_states.dart';
import 'package:movie_app/features/home/presentation/views/widgets/custom_bottom_nav.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit,HomeStates>(
      builder: (context, state) => Scaffold(
        body: Constants.tabs[context.read<HomeCubit>().currentIndex],
        bottomNavigationBar: const CustomBottomNav(),
      ),
    );
  }
}