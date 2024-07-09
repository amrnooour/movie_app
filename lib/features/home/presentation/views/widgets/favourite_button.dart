import 'package:flutter/widgets.dart';
import 'package:movie_app/core/utils/app_assets.dart';

class FavouriteButton extends StatelessWidget {
  final bool isInFavourite;
  final void Function()? onTap;
  const FavouriteButton({super.key,this.isInFavourite = false, this.onTap,});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 40,
        width: 25,
        decoration:  BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  isInFavourite?AppAssets.checkbutton: AppAssets.favouriteButton,
                ),
                fit: BoxFit.cover)),
      ),
    );
  }
}
