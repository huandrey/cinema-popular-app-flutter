import 'package:cinema_popular/pages/cinersecla_movie_details/services/cinersecla_movie_details_service.dart';
import 'package:cinema_popular/pages/cinersecla_movie_details/widgets/cinersecla_movie_details_content.dart';
import 'package:cinema_popular/pages/cinersecla_movie_details/widgets/cinersecla_movie_details_header.dart';
import 'package:cinema_popular/pages/cinersecla_movies/models/cinersecla_movie_model.dart';
import 'package:flutter/material.dart';

class CinerseclaMovieDetailsPage extends StatelessWidget {
  final CinerseclaMovie movie;
  CinerseclaMovie? movieDetails;
  final CinerseclaMovieDetailsService cinerseclaService =
      CinerseclaMovieDetailsService();

  CinerseclaMovieDetailsPage({
    super.key,
    required this.movie,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            FutureBuilder(
              future: fetchMovie(movie.id), // Função que retorna um Future
              builder: (context, snapshot) {
                if (snapshot.hasError) {
                  return Center(child: Text('Error: ${snapshot.error}'));
                } else if (snapshot.connectionState == ConnectionState.done) {
                  return CinerseclaMovieDetailsContent(
                    movie: movie,
                    movieDetails: movieDetails!,
                  );
                } else {
                  return CinerseclaMovieDetailsHeader(movie: movie);
                }
              },
            ),
          ],
        ),
      ),
    );
  }

  Future fetchMovie(String id) async {
    try {
      print('feito');
      final res = await cinerseclaService.getMovies(id);

      movieDetails = res;
    } catch (e) {
      print(e);
    }
  }
}
