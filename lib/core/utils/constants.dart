import 'package:flutter/material.dart';
import 'package:movie_app/features/browse/presentation/views/browse_view.dart';
import 'package:movie_app/features/home/presentation/views/widgets/home_view_body.dart';
import 'package:movie_app/features/search/presentation/views/search_view.dart';
import 'package:movie_app/features/watch_list/presentation/views/watch_list_view.dart';

class Constants {
  static const baseUrl = "https://api.themoviedb.org/3/movie/";
  static const apiKey = "api_key=936d9a394d36e540de9f4953662624ae";
  static const popular = "popular?";
  static const recommended = "top_rated?";
  static const imageUrl = "https://image.tmdb.org/t/p/w500";
  static const upcoming = "upcoming?";
  static List<Widget> tabs = const [
    HomeViewBody(),
    SearchView(),
    BrowseView(),
    WatchListView()
  ];
}
