import 'package:cinema_popular/pages/cinersecla_movies/api/cinersecla_movies_api.dart';
import 'package:cinema_popular/pages/cinersecla_movies/models/cinersecla_movie_model.dart';

class CinerseclaMoviesService {
  final CinerseclaMoviesApi cinerseclaApi = CinerseclaMoviesApi();

  Future<List<CinerseclaMovie>> getMovies() async {
    final response = await cinerseclaApi.getMoviesFromCinersecla();
    print(response);
    return response;
  }
}
