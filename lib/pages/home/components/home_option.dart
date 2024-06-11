import 'package:flutter/material.dart';

class HomeOption extends StatelessWidget {
  static const double width = 105;
  static const double height = 105;

  final String labelOption;
  final String pathImg;
  void Function()? onTap;

  HomeOption({
    super.key,
    required this.labelOption,
    required this.pathImg,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: onTap,
          child: Container(
            width: width,
            height: height,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                pathImg,
                fit: BoxFit.scaleDown,
              ),
            ),
          ),
        ),
        const SizedBox(height: 10),
        Text(labelOption, style: Theme.of(context).textTheme.titleSmall),
      ],
    );
  }
}
