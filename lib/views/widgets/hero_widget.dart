import 'package:flutter/material.dart';

class HeroWidget extends StatelessWidget {
  const HeroWidget({
    super.key,
    this.heightPercentageInDecimal = 1,
    this.widthPercentageInDecimal = 1,
    this.fit = BoxFit.fill,
  });

  final double heightPercentageInDecimal;
  final double widthPercentageInDecimal;
  final BoxFit fit;

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: 'hero1',
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(
              'assets/images/bg_macos.jpg',
              color: Colors.teal[400],
              colorBlendMode: BlendMode.darken,
              fit: fit,
              height:
                  MediaQuery.of(context).size.height *
                  heightPercentageInDecimal,
            ),
          ],
        ),
      ),
    );
  }
}
