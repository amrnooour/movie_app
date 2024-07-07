import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/features/home/presentation/cubit/upcoming_cubit.dart';
import 'package:movie_app/features/home/presentation/cubit/upcoming_states.dart';
import 'package:movie_app/features/home/presentation/views/widgets/shimmer_loading.dart';
import 'package:movie_app/features/home/presentation/views/widgets/upcoming_item.dart';

class ListUpcomingItem extends StatelessWidget {
  const ListUpcomingItem({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    var cubit = context.read<UpcomingCubit>();
    return Container(
      color: Colors.grey[850],
      height: height * .25,
      width: width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(10),
            child: Text("New Releases"),
          ),
          BlocBuilder<UpcomingCubit, UpcomingStates>(
            builder: (context, state) {
              return state is UpcomingSuccess
                  ? SizedBox(
                      height: height * .2,
                      width: width,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: cubit.upcomingModel!.results!.length,
                        itemBuilder: (context, index) => UpcomingItem(
                          poster:
                              cubit.upcomingModel!.results![index].posterPath!,
                        ),
                      ),
                    )
                  : ShimmerLoading(height: height * .2, width: width);
            },
          )
        ],
      ),
    );
  }
}
