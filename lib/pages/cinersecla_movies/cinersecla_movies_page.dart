import 'package:cinema_popular/pages/cinersecla_movies/components/cinersecla_movies_content.dart';
import 'package:cinema_popular/pages/cinersecla_movies/models/cinersecla_movie_model.dart';
import 'package:cinema_popular/pages/cinersecla_movies/services/cinersecla_movies_service.dart';
import 'package:flutter/material.dart';

class CinerseclaMoviesPage extends StatelessWidget {
  CinerseclaMoviesPage({super.key});

  final CinerseclaMoviesService cinerseclaService = CinerseclaMoviesService();

  List<CinerseclaMovie>? movies;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cinersecla Filmes'),
      ),
      body: CustomScrollView(slivers: [
        SliverToBoxAdapter(
          child: FutureBuilder(
            future: _fetchMovies(),
            builder: ((context, snapshot) {
              if (snapshot.hasError) {
                return Center(child: Text('error'));
              } else if (snapshot.connectionState == ConnectionState.done) {
                return CinerseclaMoviesContent(movies: movies!);
              } else {
                return Center(child: CircularProgressIndicator());
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
