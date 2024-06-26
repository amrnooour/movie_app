import 'package:flutter/material.dart';
import 'package:movie_app/features/home/presentation/views/widgets/upcoming_item.dart';

class ListUpcomingItem extends StatelessWidget {
  const ListUpcomingItem({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      color: Colors.grey[850],
      height: height * .25,
      width: width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(10),
            child: Text("New Releases"),
          ),
          SizedBox(
            height: height * .2,
            width: width,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (context, index) => const UpcomingItem(),
            ),
          )
        ],
      ),
    );
  }
}
