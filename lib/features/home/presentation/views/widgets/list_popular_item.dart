import 'package:flutter/widgets.dart';
import 'package:movie_app/features/home/presentation/views/widgets/popular_item.dart';

class ListPopularItem extends StatelessWidget {
  const ListPopularItem({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SizedBox(
      height: height * .36,
      width: width,
      child: ListView.builder(
        itemCount: 3,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => const PopularItem(),
      ),
    );
  }
}
