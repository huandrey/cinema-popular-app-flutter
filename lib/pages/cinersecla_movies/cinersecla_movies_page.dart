import 'package:carousel_slider/carousel_slider.dart';
import 'package:cinema_popular/pages/cinersecla_movies/components/cinersecla_movies_content.dart';
import 'package:cinema_popular/pages/cinersecla_movies/models/cinersecla_movie_model.dart';
import 'package:cinema_popular/pages/cinersecla_movies/services/cinersecla_movies_service.dart';
import 'package:flutter/material.dart';

class CinerseclaMoviesPage extends StatefulWidget {
  CinerseclaMoviesPage({super.key});

  @override
  State<CinerseclaMoviesPage> createState() => _CinerseclaMoviesPageState();
}

class _CinerseclaMoviesPageState extends State<CinerseclaMoviesPage> {
  final CinerseclaMoviesService cinerseclaService = CinerseclaMoviesService();
  int current = 0;
  List<CinerseclaMovie>? movies;

  @override
  void initState() {
    super.initState();

    _fetchMovies(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: movies == null
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : CinerseclaMoviesContent(movies: movies!),
    );
  }

  _fetchMovies(BuildContext context) async {
    try {
      final res = await cinerseclaService.getMovies();
      setState(() {
        movies = res;
      });
    } catch (e) {
      print(e);
    }
  }
}
