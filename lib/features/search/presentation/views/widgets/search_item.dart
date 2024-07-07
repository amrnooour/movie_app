import 'package:flutter/material.dart';
import 'package:movie_app/core/utils/constants.dart';

class SearchItem extends StatelessWidget {
  final String image;
  final String title;
  final String date;
  final String overview;
  const SearchItem({super.key, required this.image, required this.title, required this.date, required this.overview});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        const SizedBox(
          height: 15,
        ),
        Row(
          children: [
            Image.network(
              "${Constants.imageUrl}$image",
              height: height * .2,
              width: width * .4,
              fit: BoxFit.cover,
            ),
             Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: width*.4,
                    child: Text(title)),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(date),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    width: width*.4,
                    child: Text(overview,maxLines: 3,))
                ],
              ),
            )
          ],
        ),
        const Divider(
          color: Colors.grey,
        ),
      ],
    );
  }
}
