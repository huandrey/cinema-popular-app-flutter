import 'package:cinema_popular/pages/cinersecla_movies/cinersecla_movies_controller.dart';
import 'package:cinema_popular/pages/cinersecla_movies/widgets/cinersecla_movies_content.dart';
import 'package:cinema_popular/pages/cinersecla_movies/widgets/cinersecla_movies_page_shimmer.dart';
import 'package:cinema_popular/shared/widgets/my_scaffold.dart';
import 'package:flutter/material.dart';

class CinerseclaMoviesPage extends StatelessWidget {
  CinerseclaMoviesController _cinerseclaController = CinerseclaMoviesController();
  CinerseclaMoviesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      body: CustomScrollView(slivers: [
        SliverToBoxAdapter(
          child: FutureBuilder(
            future: _cinerseclaController.fetchMovies(),
            builder: ((context, snapshot) {
              if (snapshot.hasError) {
                return const Center(
                  child: Text('error'),
                );
              } else if (snapshot.connectionState == ConnectionState.done) {
                return CinerseclaMoviesContent(movies: _cinerseclaController.getCurrentMovies()!);
              } else {
                return const CinerseclaMoviesPageShimmer();
              }
            }),
          ),
        )
      ]),
    );
  }
}
