import 'package:cinema_popular/shared/widgets/shimmer/my_shimmer.dart';
import 'package:flutter/material.dart';

class CinerseclaMoviesPageShimmer extends StatelessWidget {
  const CinerseclaMoviesPageShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ConstrainedBox(
        constraints: BoxConstraints(minHeight: 200),
        child: const Padding(
          padding: EdgeInsets.all(25.0),
          child: Column(children: [
            // MyShimmer.rectangular(height: 60),
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.all(20.0),
              child: MyShimmer.rectangular(height: 400),
            ),
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 60.0),
              child: MyShimmer.rectangular(height: 30),
            ),
            SizedBox(height: 12),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40.0),
              child: MyShimmer.rectangular(height: 30),
            ),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: MyShimmer.rectangular(height: 60),
            ),
          ]),
        ),
      ),
    );
  }
}
