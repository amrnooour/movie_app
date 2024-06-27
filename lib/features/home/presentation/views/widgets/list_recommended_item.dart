import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/features/home/presentation/cubit/home_cubit.dart';
import 'package:movie_app/features/home/presentation/cubit/home_states.dart';
import 'package:movie_app/features/home/presentation/views/widgets/recommended_item.dart';
import 'package:movie_app/features/home/presentation/views/widgets/shimmer_loading.dart';

class ListRecommendedItem extends StatelessWidget {
  const ListRecommendedItem({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    var cubit = context.read<HomeCubit>();
    return Container(
      height: height * .4,
      width: width,
      color: Colors.grey[850],
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(10),
            child: Text("Recommended"),
          ),
          BlocBuilder<HomeCubit, HomeStates>(
            builder: (context, state) {
              return state is RecommendedSuccess
                  ? SizedBox(
                      height: height * .29,
                      width: width,
                      child: ListView.builder(
                        itemCount: cubit.recommendedModel!.results!.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) =>
                            RecommendedItem(
                              poster: cubit.recommendedModel!.results![index].posterPath!,
                              name: cubit.recommendedModel!.results![index].originalTitle!,
                              date: cubit.recommendedModel!.results![index].releaseDate!,
                            ),
                      ),
                    )
                  : ShimmerLoading(height: height * .29, width: width);
            },
          )
        ],
      ),
    );
  }
}
