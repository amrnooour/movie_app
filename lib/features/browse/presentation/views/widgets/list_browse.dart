import 'package:flutter/material.dart';
import 'package:movie_app/features/browse/presentation/views/widgets/browse_item.dart';

class ListBrowse extends StatelessWidget {
  const ListBrowse({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SizedBox(
      height: height,
      width: width,
      child: GridView.builder(
        itemCount: 15,
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (context, index) => const Padding(
          padding: EdgeInsets.symmetric(horizontal: 5,vertical: 5),
          child: BrowseItem(),
        ),
      ),
    );
  }
}
