import 'package:cinema_popular/pages/cinersecla_movie_details/api/cinersecla_movie_details_api.dart';
import 'package:cinema_popular/pages/cinersecla_movies/api/cinersecla_movies_api.dart';
import 'package:cinema_popular/pages/cinersecla_movies/models/cinersecla_movie_model.dart';

class CinerseclaMovieDetailsService {
  final CinerseclaMovieDetailsApi cinerseclaApi = CinerseclaMovieDetailsApi();

  Future<CinerseclaMovie> getMovies(String id) async {
    final response = await cinerseclaApi.getMovieFromCinersecla(id);
    return response;
  }
}
