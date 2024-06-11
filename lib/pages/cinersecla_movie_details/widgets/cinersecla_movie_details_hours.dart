import 'package:cinema_popular/pages/cinersecla_movies/models/cinersecla_movie_model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CinerseclaMovieDetailsHours extends StatelessWidget {
  final CinerseclaMovie movie;

  const CinerseclaMovieDetailsHours({
    super.key,
    required this.movie,
  });

  @override
  Widget build(BuildContext context) {
    return movie.hours.isNotEmpty
        ? _buildHours()
        : Container(
            width: 120,
            margin: const EdgeInsets.only(top: 2),
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Center(
              child: Text(
                'Em breve',
                style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                textAlign: TextAlign.center,
              ),
            ),
          );
  }

  Widget _buildHours() {
    return Container(
      height: 60,
      width: double.infinity * 0.8,
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: movie.hours.length,
        itemBuilder: (context, index) {
          return Row(
            children: [
              Container(
                width: 60,
                decoration: BoxDecoration(
                  color: movie.hours[index]['status'] == 'inactive'
                      ? Colors.grey.shade800
                      : Colors.red.shade700,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Center(
                  child: Text(
                    movie.hours[index]['session'],
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 16),
            ],
          );
        },
      ),
    );
  }
}
