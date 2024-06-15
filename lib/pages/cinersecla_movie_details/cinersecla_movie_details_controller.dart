import 'package:cinema_popular/pages/cinersecla_movie_details/services/cinersecla_movie_details_service.dart';
import 'package:cinema_popular/pages/cinersecla_movies/models/cinersecla_movie_model.dart';

class CinerseclaMovieDetailsController {
  CinerseclaMovie? movieDetails;
  final CinerseclaMovieDetailsService service = CinerseclaMovieDetailsService();

  CinerseclaMovieDetailsController();

  Future fetchMovie(String id) async {
    try {
      final res = await service.getMovies(id);

      movieDetails = res;
    } catch (e) {
      print(e);
    }
  }

  CinerseclaMovie getCinerseclaMovieDetails() {
    if (movieDetails == null) {
      throw Exception('Movie details not loaded yet');
    }

    return movieDetails!;
  }
}
