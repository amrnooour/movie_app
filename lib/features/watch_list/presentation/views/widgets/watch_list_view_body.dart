import 'package:flutter/material.dart';
import 'package:movie_app/features/watch_list/presentation/views/widgets/list_watch_list.dart';

class WatchListViewBody extends StatelessWidget {
  const WatchListViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          ListWatchList(),
        ],
      ),
    );
  }
}
