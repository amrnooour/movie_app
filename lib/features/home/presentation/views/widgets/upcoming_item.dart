import 'package:flutter/material.dart';
import 'package:movie_app/core/utils/app_assets.dart';
import 'package:movie_app/features/home/presentation/views/widgets/favourite_button.dart';

class UpcomingItem extends StatelessWidget {
  const UpcomingItem({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Stack(children: [
        Image.asset(
          height: height*.2,
          width: width*.25,AppAssets.poster,fit: BoxFit.cover,),
          const Positioned(
            left: 0,
            top: 0,
            child: FavouriteButton())
      ],),
    );
  }
}