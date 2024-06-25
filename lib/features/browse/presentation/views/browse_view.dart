import 'package:flutter/material.dart';
import 'package:movie_app/features/browse/presentation/views/widgets/browse_view_body.dart';

class BrowseView extends StatelessWidget {
  const BrowseView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: BrowseViewBody(),
    );
  }
}