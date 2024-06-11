import 'package:cinema_popular/pages/cinersecla_movie_details/cinersecla_movie_details_page.dart';
import 'package:cinema_popular/pages/cinersecla_movies/models/cinersecla_movie_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class CinerseclaMoviesContainer extends StatelessWidget {
  CinerseclaMovie movie;
  final bool isSelected;

  CinerseclaMoviesContainer({
    super.key,
    required this.movie,
    required this.isSelected,
  });

  @override
  void initState() {
    _checkImageStatus();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - 100,
      decoration: BoxDecoration(
        color: Colors.grey.shade900,
        borderRadius: const BorderRadius.all(
          Radius.circular(12),
        ),
      ),
      child: Column(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CinerseclaMovieDetailsPage(
                    movie: movie,
                  ),
                ),
              );
            },
            child: Hero(
              tag: 'hero-tag-${movie.image}',
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12.0),
                child: Image.network(
                  movie.image,
                  width: double.infinity,
                  height: 310,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          const SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              movie.title.toUpperCase(),
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                textStyle: TextStyle(
                  color: Colors.grey.shade300,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          const SizedBox(height: 6),
          isSelected == true
              ? Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Text(
                        movie.phrase,
                        textAlign: TextAlign.center,
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            color: Colors.grey.shade400,
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    movie.hours.isNotEmpty
                        ? Container(
                            height: 60,
                            width: MediaQuery.of(context).size.width * 0.8,
                            padding: const EdgeInsets.symmetric(horizontal: 0),
                            child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: movie.hours.length,
                                itemBuilder: (context, index) {
                                  return Row(
                                    children: [
                                      Container(
                                        width: 60,
                                        decoration: BoxDecoration(
                                          color: movie.hours[index]['status'] ==
                                                  'inactive'
                                              ? Colors.grey.shade800
                                              : Colors.red.shade700,
                                          borderRadius:
                                              BorderRadius.circular(5),
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
                                }),
                          )
                        : Container(
                            width: 120,
                            margin: const EdgeInsets.only(top: 2),
                            padding: const EdgeInsets.symmetric(
                                vertical: 12, horizontal: 12),
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
                          ),
                  ],
                )
              : Container(),
        ],
      ),
    );
  }

  void _checkImageStatus() {
    final image = NetworkImage(movie.image);
    image.resolve(const ImageConfiguration()).addListener(
          ImageStreamListener((info, call) {
            print('Image is fully loaded.');
          }, onError: (exception, stackTrace) {
            print('Image failed to load.');
          }),
        );
  }
}
