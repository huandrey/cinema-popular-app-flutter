import 'package:cinema_popular/pages/cinersecla_movies/cinersecla_movies_page.dart';
import 'package:cinema_popular/pages/home/widgets/home_option.dart';
import 'package:cinema_popular/pages/home/widgets/home_retail_media.dart';
import 'package:flutter/material.dart';

class HomeContent extends StatelessWidget {
  const HomeContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(top: 32.0),
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.tertiary,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(24.0),
          topRight: Radius.circular(24.0),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 32),
          Text(
            'Olá, John 👋',
            style: Theme.of(context).textTheme.headlineLarge,
          ),
          const SizedBox(
            height: 36,
          ),
          Text(
            'Opções para você',
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              HomeOption(
                  labelOption: 'Cinersecla',
                  pathImg: 'lib/assets/images/cinersecla.png',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CinerseclaMoviesPage(),
                      ),
                    );
                  }),
              const SizedBox(width: 16),
              HomeOption(
                labelOption: 'Clube Memorial',
                pathImg: 'lib/assets/images/clube_memorial.png',
                onTap: () {},
              ),
            ],
          ),
          const SizedBox(height: 36),
          const HomeRetailMedia(),
          const SizedBox(height: 36),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
            decoration: BoxDecoration(
              color: Colors.amber.shade400,
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Text(
              textAlign: TextAlign.center,
              'Esse aplicativo ainda está em fase de teste, qualquer sugestão será bem vinda sempre',
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    letterSpacing: 0.5,
                    color: Colors.grey.shade400,
                    fontWeight: FontWeight.w300,
                  ),
            ),
          )
        ],
      ),
    );
  }
}
