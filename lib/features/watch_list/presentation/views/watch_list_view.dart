import 'package:flutter/material.dart';
import 'package:movie_app/features/watch_list/presentation/views/widgets/watch_list_view_body.dart';

class WatchListView extends StatelessWidget {
  const WatchListView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: WatchListViewBody(),
    );
  }
}