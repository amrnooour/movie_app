import 'package:flutter/material.dart';
import 'package:movie_app/features/browse/presentation/views/browse_view.dart';
import 'package:movie_app/features/home/presentation/views/widgets/home_view_body.dart';
import 'package:movie_app/features/search/presentation/views/search_view.dart';
import 'package:movie_app/features/watch_list/presentation/views/watch_list_view.dart';

class Constants {
  static List<Widget> tabs = const [
    HomeViewBody(),
    SearchView(),
    BrowseView(),
    WatchListView()
  ];
}
