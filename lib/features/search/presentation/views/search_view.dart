import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/features/search/data/repos/search_repo.dart';
import 'package:movie_app/features/search/presentation/cubit/search_cubit.dart';
import 'package:movie_app/features/search/presentation/views/widgets/search_view_body.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return  BlocProvider(
      create: (context) => SearchCubit(SearchRepo(Dio())),
      child: const Scaffold(
        body: SearchViewBody(),
      ),
    );
  }
}