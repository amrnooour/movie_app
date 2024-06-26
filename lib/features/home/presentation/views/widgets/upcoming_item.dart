import 'package:flutter/material.dart';
import 'package:movie_app/core/utils/constants.dart';
import 'package:movie_app/features/home/presentation/views/widgets/favourite_button.dart';

class UpcomingItem extends StatelessWidget {
  final String poster;
  const UpcomingItem({super.key, required this.poster});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Stack(
        children: [
          Image.network(
            height: height * .2,
            width: width * .25,
            "${Constants.imageUrl}$poster",
            fit: BoxFit.cover,
          ),
          const Positioned(left: 0, top: 0, child: FavouriteButton())
        ],
      ),
    );
  }
}
