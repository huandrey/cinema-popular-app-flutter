import 'package:cinema_popular/pages/cinersecla_movies/widgets/cinersecla_movies_content.dart';
import 'package:cinema_popular/pages/cinersecla_movies/widgets/cinersecla_movies_page_shimmer.dart';
import 'package:cinema_popular/pages/cinersecla_movies/models/cinersecla_movie_model.dart';
import 'package:cinema_popular/pages/cinersecla_movies/services/cinersecla_movies_service.dart';
import 'package:cinema_popular/shared/widgets/my_scaffold.dart';
import 'package:cinema_popular/shared/widgets/shimmer/my_shimmer.dart';
import 'package:flutter/material.dart';

class CinerseclaMoviesPage extends StatelessWidget {
  CinerseclaMoviesPage({super.key});

  final CinerseclaMoviesService cinerseclaService = CinerseclaMoviesService();

  List<CinerseclaMovie>? movies;

  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      body: CustomScrollView(slivers: [
        SliverToBoxAdapter(
          child: FutureBuilder(
            future: _fetchMovies(),
            builder: ((context, snapshot) {
              if (snapshot.hasError) {
                return const Center(
                  child: Text('error'),
                );
              } else if (snapshot.connectionState == ConnectionState.done) {
                return CinerseclaMoviesContent(movies: movies!);
              } else {
                return const CinerseclaMoviesPageShimmer();
              }
            }),
          ),
        )
      ]),
    );
  }

  Future _fetchMovies() async {
    try {
      final res = await cinerseclaService.getMovies();
      movies = res;
    } catch (e) {
      print(e);
    }
  }
}
