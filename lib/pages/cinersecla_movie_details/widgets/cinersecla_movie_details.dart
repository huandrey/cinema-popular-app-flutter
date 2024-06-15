import 'package:cinema_popular/pages/cinersecla_movies/models/cinersecla_movie_model.dart';
import 'package:flutter/material.dart';

class CinerseclaMovieDetails extends StatelessWidget {
  final CinerseclaMovie movie;

  const CinerseclaMovieDetails({
    super.key,
    required this.movie,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.tertiary,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(24.0),
          topRight: Radius.circular(24.0),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 24,
          ),
          Text(
            'Sinopse',
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Text(
              movie.description ?? '',
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    height: 1.3,
                    letterSpacing: 0.5,
                    color: Colors.grey.shade200,
                  ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            'Dirigido por',
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          const SizedBox(
            height: 8,
          ),
          Center(
            child: Text(
              movie.director ?? '',
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    height: 1.3,
                    letterSpacing: 0.5,
                    color: Colors.grey.shade200,
                  ),
            ),
          ),
          const SizedBox(height: 20),
          Text(
            'Cast',
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          const SizedBox(
            height: 8,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Center(
              child: Text(
                textAlign: TextAlign.center,
                movie.cast!.join(', '),
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      height: 1.6,
                      letterSpacing: 0.5,
                      color: Colors.grey.shade200,
                    ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Text(
            'Uma produção de',
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          const SizedBox(
            height: 8,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Center(
              child: Text(
                textAlign: TextAlign.center,
                movie.distributor.toString(),
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      height: 1.6,
                      letterSpacing: 0.5,
                      color: Colors.grey.shade200,
                    ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Text(
            'Duração do filme',
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          const SizedBox(
            height: 8,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Center(
              child: Text(
                textAlign: TextAlign.center,
                movie.duration.toString(),
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      height: 1.6,
                      letterSpacing: 0.5,
                      color: Colors.grey.shade200,
                    ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Text(
            'Classificação',
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          const SizedBox(
            height: 8,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Center(
              child: Text(
                textAlign: TextAlign.center,
                movie.classification.toString(),
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      height: 1.6,
                      letterSpacing: 0.5,
                      color: Colors.grey.shade200,
                    ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Text(
            'Gênero',
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          const SizedBox(
            height: 8,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Center(
              child: Text(
                textAlign: TextAlign.center,
                movie.genre.toString(),
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      height: 1.6,
                      letterSpacing: 0.5,
                      color: Colors.grey.shade200,
                    ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
