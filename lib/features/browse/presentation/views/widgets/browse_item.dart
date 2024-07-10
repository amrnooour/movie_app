import 'package:flutter/material.dart';
import 'package:movie_app/core/utils/app_assets.dart';

class BrowseItem extends StatelessWidget {
  const BrowseItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(AppAssets.browseImage,height: 250,width: 250,fit: BoxFit.cover,);
  }
}