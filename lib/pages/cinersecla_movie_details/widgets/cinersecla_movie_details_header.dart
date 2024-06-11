import 'package:cinema_popular/pages/cinersecla_movies/models/cinersecla_movie_model.dart';
import 'package:flutter/material.dart';

class CinerseclaMovieDetailsHeader extends StatelessWidget {
  final CinerseclaMovie movie;

  const CinerseclaMovieDetailsHeader({
    super.key,
    required this.movie,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            Hero(
              tag: 'hero-tag-${movie.image}',
              child: Container(
                height: 400,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(movie.image),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Text(
              movie.title,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headlineSmall,
            ),
          ],
        ),
        Positioned(
          top: 60, // Ajuste conforme necessário
          left: 16, // Ajuste conforme necessário
          child: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
        Positioned(
          top: 60, // Ajuste conforme necessário
          right: 16, // Ajuste conforme necessário
          child: IconButton(
            icon: Icon(Icons.favorite_border, color: Colors.white),
            onPressed: () {
              // Ação ao clicar no ícone de favorito
            },
          ),
        ),
      ],
    );
  }
}
