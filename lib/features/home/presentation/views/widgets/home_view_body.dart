import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/features/home/presentation/cubit/home_cubit.dart';
import 'package:movie_app/features/home/presentation/views/widgets/list_popular_item.dart';
import 'package:movie_app/features/home/presentation/views/widgets/list_recommended_item.dart';
import 'package:movie_app/features/home/presentation/views/widgets/list_upcoming_item.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({super.key});

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  @override
  void initState() {
    context.read<HomeCubit>().fetchPopularMovie();
    context.read<HomeCubit>().fetchUpcomingMovie();
    context.read<HomeCubit>().fetchRecommendedgMovie();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          ListPopularItem(),
          ListUpcomingItem(),
          ListRecommendedItem()
        ],
      ),
    );
  }
}
