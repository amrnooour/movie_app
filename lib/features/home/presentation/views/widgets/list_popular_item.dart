import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/features/home/presentation/cubit/home_cubit.dart';
import 'package:movie_app/features/home/presentation/cubit/home_states.dart';
import 'package:movie_app/features/home/presentation/views/widgets/popular_item.dart';
import 'package:movie_app/features/home/presentation/views/widgets/shimmer_loading.dart';

class ListPopularItem extends StatelessWidget {
  const ListPopularItem({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    var cubit = context.read<HomeCubit>();
    return BlocBuilder<HomeCubit,HomeStates>(
      builder: (context, state) {
        return state is HomeSuccess? SizedBox(
        height: height * .36,
        width: width,
        child: ListView.builder(
                  itemCount: cubit.popularModel!.results!.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => PopularItem(
                    poster: cubit.popularModel!.results![index].backdropPath!,
                    moviePicture: cubit.popularModel!.results![index].posterPath!,
                    title: cubit.popularModel!.results![index].title!,
                    date: cubit.popularModel!.results![index].releaseDate!,
                  ),
                ),
      ) : ShimmerLoading(height: height * .4, width: width);
      }, 
    );
  }
}
