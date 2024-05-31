import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:cinema_popular/pages/cinersecla_movies/models/cinersecla_movie_model.dart';

class CinerseclaMoviesApi {
  static const BASE_URL = "http://localhost:8000/";

  Future<List<CinerseclaMovie>> getMoviesFromCinersecla() async {
    final response = await http.get(Uri.parse(BASE_URL + "films"));

    if (response.statusCode == 200) {
      final body = json.decode(response.body)['data'] as List;
      return body.map((movie) => CinerseclaMovie.fromJson(movie)).toList();
    } else {
      throw Exception('Failed to load movies');
    }
  }
}
