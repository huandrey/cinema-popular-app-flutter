import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:cinema_popular/pages/cinersecla_movies/models/cinersecla_movie_model.dart';

class CinerseclaMovieDetailsApi {
  static const BASE_URL = "http://localhost:3333/";

  Future<CinerseclaMovie> getMovieFromCinersecla(String id) async {
    final response = await http.get(Uri.parse("${BASE_URL}movie/$id"));
    if (response.statusCode == 200) {
      final body = json.decode(response.body)['data'];
      print(CinerseclaMovie.fromJson(body));
      return CinerseclaMovie.fromJson(body);
    } else {
      throw Exception('Failed to load movies');
    }
  }
}
