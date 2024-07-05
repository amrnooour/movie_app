import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/core/utils/app_assets.dart';
import 'package:movie_app/core/utils/constants.dart';
import 'package:movie_app/core/utils/styles.dart';
import 'package:movie_app/features/home/data/models/details_popular_model.dart';
import 'package:movie_app/features/home/presentation/cubit/home_cubit.dart';
import 'package:movie_app/features/home/presentation/views/widgets/action_item.dart';
import 'package:movie_app/features/home/presentation/views/widgets/favourite_button.dart';
import 'package:movie_app/features/home/presentation/views/widgets/list_recommended_item.dart';

class DetailsPopularView extends StatefulWidget {
  final DetailsPopularModel detailsPopularModel;
  const DetailsPopularView({super.key, required this.detailsPopularModel});

  @override
  State<DetailsPopularView> createState() => _DetailsPopularViewState();
}

class _DetailsPopularViewState extends State<DetailsPopularView> {
  @override
  void initState() {
    super.initState();
    context.read<HomeCubit>().fetchRecommendedgMovie();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.detailsPopularModel.title,
          maxLines: 1,
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Image.network(
                    height: height * .3,
                    width: width,
                    "${Constants.imageUrl}${widget.detailsPopularModel.cover}"),
                Positioned(
                    top: height * .1,
                    right: width * .4,
                    child: Image.asset(AppAssets.playButtonImage)),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Text(widget.detailsPopularModel.title),
            const SizedBox(
              height: 10,
            ),
            Text(
              widget.detailsPopularModel.date,
              style: Styles.date,
            ),
            const SizedBox(
              height: 10,
            ),
            Row(children: [
              Stack(
                children: [
                  Image.network(
                      height: height * .23,
                      width: width * .3,
                      "${Constants.imageUrl}${widget.detailsPopularModel.poster}"),
                  const Positioned(left: 0, top: 9.5, child: FavouriteButton()),
                ],
              ),
              const SizedBox(
                width: 10,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Row(children: [
                    SizedBox(
                      height: 10,
                    ),
                    ActionItem(),
                    SizedBox(
                      width: 5,
                    ),
                    ActionItem(),
                    SizedBox(
                      width: 5,
                    ),
                    ActionItem(),
                  ]),
                  const SizedBox(
                    height: 10,
                  ),
                  const ActionItem(),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                      width: width * .5,
                      child: Text(
                        widget.detailsPopularModel.overView,
                        maxLines: 5,
                      )),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Image.asset(AppAssets.star),
                      const Text("7.7"),
                    ],
                  )
                ],
              ),
            ]),
            const ListRecommendedItem(),
          ],
        ),
      ),
    );
  }
}
