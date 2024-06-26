import 'package:flutter/material.dart';
import 'package:movie_app/core/utils/app_assets.dart';
import 'package:movie_app/features/home/presentation/views/widgets/favourite_button.dart';

class RecommendedItem extends StatelessWidget {
  //final String poster;
  const RecommendedItem({super.key});

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
              Image.asset(
                height: height * .2,
                width: width * .25,
                AppAssets.poster,
                //"${Constants.imageUrl}$poster",
                fit: BoxFit.cover,
              ),
              const Positioned(left: 0, top: 0, child: FavouriteButton())
            ],
          ),
          Row(
            children: [
            Image.asset(AppAssets.star),
            const Text("7.7")
          ],),
          const Text("jschjhsack",maxLines: 1,),
          const Text("2018-9-7")
        ],
      ),
    );
  }
}
