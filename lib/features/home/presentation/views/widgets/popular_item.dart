import 'package:flutter/material.dart';
import 'package:movie_app/core/utils/app_assets.dart';
import 'package:movie_app/core/utils/styles.dart';
import 'package:movie_app/features/home/presentation/views/widgets/favourite_button.dart';

class PopularItem extends StatelessWidget {
  const PopularItem({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SizedBox(
      height: height*.4,
      width: width,
      child: Stack(
        children: [
          Image.asset(
            height: height*.3,
            width: width,
            AppAssets.image),
            Positioned(
              child: Center(child: Image.asset(AppAssets.playButtonImage))),
            Positioned(
              bottom: 0,
              left: 10,
              child: Stack(
                children: [
                  Image.asset(AppAssets.poster),
                  const Positioned(
                    left: 0,
                    top: 0,
                    child: FavouriteButton()),
                ],)),
            const Positioned(
              bottom: 10,
              right: 50,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Dora and the lost city are lost",maxLines: 1,),
                  SizedBox(height: 10,),
                  Text("2019 PG-13 2h 7m",style: Styles.date,maxLines: 1,)
              ],
              ),
            )
          ],
      ),
    );
  }
}
