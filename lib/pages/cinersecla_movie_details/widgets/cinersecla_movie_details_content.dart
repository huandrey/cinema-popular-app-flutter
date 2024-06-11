import 'package:cinema_popular/pages/cinersecla_movie_details/widgets/cinersecla_movie_details.dart';
import 'package:cinema_popular/pages/cinersecla_movie_details/widgets/cinersecla_movie_details_header.dart';
import 'package:cinema_popular/pages/cinersecla_movie_details/widgets/cinersecla_movie_details_hours.dart';
import 'package:cinema_popular/pages/cinersecla_movies/models/cinersecla_movie_model.dart';
import 'package:flutter/material.dart';

class CinerseclaMovieDetailsContent extends StatelessWidget {
  final CinerseclaMovie movie;
  final CinerseclaMovie movieDetails;

  const CinerseclaMovieDetailsContent({
    super.key,
    required this.movie,
    required this.movieDetails,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CinerseclaMovieDetailsHeader(movie: movie),
        const SizedBox(height: 30),
        CinerseclaMovieDetailsHours(movie: movie),
        const SizedBox(height: 32),
        CinerseclaMovieDetails(movie: movieDetails),
      ],
    );
  }
}
