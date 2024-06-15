import 'package:cinema_popular/pages/cinersecla_movies/models/cinersecla_movie_model.dart';
import 'package:cinema_popular/pages/cinersecla_movies/services/cinersecla_movies_service.dart';

class CinerseclaMoviesController {
  List<CinerseclaMovie>? movies;
  CinerseclaMoviesService _cinerseclaService = CinerseclaMoviesService();

  CinerseclaMoviesController();

  List<CinerseclaMovie>? getCurrentMovies() {
    if (movies == null || movies!.isEmpty)
      throw Exception("Movies its not load yet");

    return movies;
  }

  Future fetchMovies() async {
    try {
      final res = await _cinerseclaService.getMovies();
      movies = res;
    } catch (e) {
      print(e);
    }
  }
}
