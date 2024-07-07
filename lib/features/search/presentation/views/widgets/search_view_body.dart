import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/features/search/presentation/cubit/search_cubit.dart';
import 'package:movie_app/features/search/presentation/views/widgets/list_search.dart';
import 'package:movie_app/features/search/presentation/views/widgets/search_text_field.dart';

class SearchViewBody extends StatefulWidget {
  const SearchViewBody({super.key});

  @override
  State<SearchViewBody> createState() => _SearchViewBodyState();
}

class _SearchViewBodyState extends State<SearchViewBody> {
  @override
  void initState() {
    context.read<SearchCubit>().search();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SearchTextField(
                onChanged: (value) {
                  context.read<SearchCubit>().query = value;
                  context.read<SearchCubit>().search();
                },
              ),
              const ListSearch()
            ],
          ),
        ),
      ),
    );
  }
}
