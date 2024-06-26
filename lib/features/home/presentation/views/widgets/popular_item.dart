import 'package:flutter/material.dart';
import 'package:movie_app/core/utils/app_assets.dart';
import 'package:movie_app/core/utils/constants.dart';
import 'package:movie_app/core/utils/styles.dart';
import 'package:movie_app/features/home/presentation/views/widgets/favourite_button.dart';

class PopularItem extends StatelessWidget {
  final String poster;
  final String moviePicture;
  final String title;
  final String date;
  const PopularItem(
      {super.key, required this.poster, required this.moviePicture, required this.title, required this.date});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SizedBox(
      height: height * .4,
      width: width,
      child: Stack(
        children: [
          Image.network(
              height: height * .3,
              width: width,
              "${Constants.imageUrl}$poster"),
          Positioned(
              child: Center(child: Image.asset(AppAssets.playButtonImage))),
          Positioned(
              bottom: 0,
              left: 10,
              child: Stack(
                children: [
                  Image.network(
                    height: height*.23,width: width*.3,
                    "${Constants.imageUrl}$moviePicture"),
                  const Positioned(left: 0, top: 9.5, child: FavouriteButton()),
                ],
              )),
          Positioned(
            bottom: 10,
            left: width*.38,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  maxLines: 1,
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  date,
                  style: Styles.date,
                  maxLines: 1,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
