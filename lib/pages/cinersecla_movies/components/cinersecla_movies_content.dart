import 'package:cinema_popular/pages/cinersecla_movies/components/cinersecla_movies_carousel.dart';
import 'package:cinema_popular/pages/cinersecla_movies/models/cinersecla_movie_model.dart';
import 'package:flutter/material.dart';

class CinerseclaMoviesContent extends StatelessWidget {
  List<CinerseclaMovie> movies;

  CinerseclaMoviesContent({
    super.key,
    required this.movies,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 60),
        Center(
          child: Positioned(
            bottom: 160,
            height: MediaQuery.of(context).size.height * 0.6,
            width: MediaQuery.of(context).size.width,
            child: CinerseclaMoviesCarousel(movies: movies),
          ),
        ),
      ],
    );
  }
}
