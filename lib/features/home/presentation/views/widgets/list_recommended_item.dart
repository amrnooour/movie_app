import 'package:flutter/material.dart';
import 'package:movie_app/features/home/presentation/views/widgets/recommended_item.dart';

class ListRecommendedItem extends StatelessWidget {
  const ListRecommendedItem({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      height: height*.4,
      width: width,
      color: Colors.grey[850],
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        const Padding(
          padding: EdgeInsets.all(10),
          child: Text("Recommended"),
        ),
        SizedBox(
          height: height * .29,
          width: width,
          child: ListView.builder(
            itemCount: 7,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) =>  const RecommendedItem(),),
        )
      ],),
    );
  }
}