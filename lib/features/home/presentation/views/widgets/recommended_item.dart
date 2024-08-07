import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/core/utils/app_assets.dart';
import 'package:movie_app/core/utils/constants.dart';
import 'package:movie_app/features/home/presentation/cubit/home_cubit.dart';
import 'package:movie_app/features/home/presentation/views/widgets/favourite_button.dart';

class RecommendedItem extends StatelessWidget {
  final String poster;
  final String name;
  final String date;
  final void Function()? onTap;
  const RecommendedItem({super.key, required this.poster, required this.name, required this.date, this.onTap});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Image.network(
                height: height * .2,
                width: width * .25,
                "${Constants.imageUrl}$poster",
                fit: BoxFit.cover,
              ),
              Positioned(left: 0, top: 0,
               child: FavouriteButton(
                onTap: onTap,
                isInFavourite: context.read<HomeCubit>().isInFavourite,
               ))
            ],
          ),
          Row(
            children: [Image.asset(AppAssets.star), const Text("7.7")],
          ),
          SizedBox(
            width: width*.25,
            child: Text(
              name,
              maxLines: 1,
            ),
          ),
          Text(date)
        ],
      ),
    );
  }
}
