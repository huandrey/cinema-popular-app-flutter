import 'package:carousel_slider/carousel_slider.dart';
import 'package:cinema_popular/pages/cinersecla_movies/components/cinersecla_movies_container.dart';
import 'package:cinema_popular/pages/cinersecla_movies/models/cinersecla_movie_model.dart';
import 'package:flutter/material.dart';

class CinerseclaMoviesCarousel extends StatefulWidget {
  List<CinerseclaMovie> movies;

  CinerseclaMoviesCarousel({
    super.key,
    required this.movies,
  });

  @override
  State<CinerseclaMoviesCarousel> createState() =>
      _CinerseclaMoviesCarouselState();
}

class _CinerseclaMoviesCarouselState extends State<CinerseclaMoviesCarousel> {
  int current = 0;

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      carouselController: CarouselController(),
      options: CarouselOptions(
        autoPlay: true,
        autoPlayAnimationDuration: const Duration(milliseconds: 800),
        autoPlayCurve: Curves.fastOutSlowIn,
        onPageChanged: (index, reason) {
          setState(() {
            current = index;
          });
        },
        height: 520,
        enlargeCenterPage: true,
      ),
      items: widget.movies.asMap().entries.map((entry) {
        int index = entry.key;
        CinerseclaMovie movie = entry.value;

        return Builder(
          builder: (BuildContext context) {
            return CinerseclaMoviesContainer(
              movie: movie,
              isSelected: current == index,
            );
          },
        );
      }).toList(),
    );
  }
}
