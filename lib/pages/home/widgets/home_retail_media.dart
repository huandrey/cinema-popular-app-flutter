import 'package:flutter/material.dart';

class HomeRetailMedia extends StatelessWidget {
  const HomeRetailMedia({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 124,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.background,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
