import 'package:cinema_popular/pages/cinersecla_movies/components/cinersecla_movies_carousel.dart';
import 'package:cinema_popular/pages/cinersecla_movies/components/day/day_content.dart';
import 'package:cinema_popular/pages/cinersecla_movies/models/cinersecla_movie_model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CinerseclaMoviesContent extends StatelessWidget {
  List<CinerseclaMovie> movies;

  Map<String, int> days = {
    'Qui': 21,
    'Sex': 22,
    'Sáb': 23,
    'Dom': 24,
    'Seg': 25,
    'Ter': 26,
    'Qua': 27,
  };

  CinerseclaMoviesContent({
    super.key,
    required this.movies,
  });

  @override
  Widget build(BuildContext context) {
    final List<MapEntry<String, String>> entries = days.entries
        .map((entry) => MapEntry(entry.key, entry.value.toString()))
        .toList();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Dias da semana',
                style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 60,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: entries.length,
                  itemBuilder: (context, index) {
                    return Row(
                      children: [
                        DayContent(
                          day: entries[index].key,
                          date: entries[index].value,
                          today: (index == 2),
                        ),
                        const SizedBox(width: 16),
                      ],
                    );
                  },
                ),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        CinerseclaMoviesCarousel(movies: movies),
        const SizedBox(
          height: 20,
        ),
        Center(
          child: Text(
            'Powered by Huandrey Pontes',
            style: GoogleFonts.poppins(
              textStyle: TextStyle(
                color: Colors.grey.shade400,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 40,
        ),
      ],
    );
  }
}
