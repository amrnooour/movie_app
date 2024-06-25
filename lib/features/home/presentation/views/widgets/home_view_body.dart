import 'package:flutter/material.dart';
import 'package:movie_app/features/home/presentation/views/widgets/list_popular_item.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(children: [
      ListPopularItem()
    ],);
  }
}