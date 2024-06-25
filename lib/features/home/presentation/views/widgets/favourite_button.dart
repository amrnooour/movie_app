import 'package:flutter/widgets.dart';
import 'package:movie_app/core/utils/app_assets.dart';

class FavouriteButton extends StatelessWidget {
  const FavouriteButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 25,
      decoration: const BoxDecoration(image: DecorationImage
      (image: AssetImage(AppAssets.favouriteButton,),fit: BoxFit.cover)),
    );
  }
}