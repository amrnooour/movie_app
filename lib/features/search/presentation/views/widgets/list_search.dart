import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/core/utils/app_assets.dart';
import 'package:movie_app/core/utils/constants.dart';
import 'package:movie_app/features/search/presentation/cubit/search_cubit.dart';
import 'package:movie_app/features/search/presentation/cubit/search_states.dart';
import 'package:movie_app/features/search/presentation/views/widgets/search_item.dart';

class ListSearch extends StatelessWidget {
  const ListSearch({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    var cubit = context.read<SearchCubit>();
    return BlocBuilder<SearchCubit, SearchStates>(
        builder: (context, state) => state is SearchSuccess && cubit.query == ""
            ? Padding(
              padding: const EdgeInsets.symmetric(vertical: 250),
              child: Image.asset(
                fit: BoxFit.cover,
              AppAssets.noMovies,
                            ),
            )
            : SizedBox(
                height: height,
                width: width,
                child: ListView.builder(
                  itemCount: cubit.query == ""
                      ? 0
                      : cubit.searchModel!.results!.length,
                  itemBuilder: (context, index) => SearchItem(
                      image: cubit.searchModel?.results?[index].posterPath ??
                          Constants.nullImage,
                      title: cubit.searchModel!.results![index].title!,
                      date: cubit.searchModel!.results![index].releaseDate!,
                      overview: cubit.searchModel!.results![index].overview!),
                ),
              ));
  }
}
