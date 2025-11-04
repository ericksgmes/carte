import 'package:flutter/material.dart';

class HeroWidget extends StatelessWidget {
  const HeroWidget({
    super.key,
    this.heightPercentageInDecimal = 1,
    this.widthPercentageInDecimal = 1,
    this.fit = BoxFit.cover,
  });

  final double heightPercentageInDecimal;
  final double widthPercentageInDecimal;
  final BoxFit fit;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, c) {
        final screen = MediaQuery.sizeOf(context);
        final desiredH = screen.height * heightPercentageInDecimal;
        
        final maxH = c.maxHeight.isFinite ? c.maxHeight : desiredH;
        final h = desiredH <= maxH ? desiredH : maxH;

        final w = c.maxWidth.isFinite ? c.maxWidth : screen.width * widthPercentageInDecimal;

        return Hero(
          tag: 'hero1',
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: SizedBox(
              height: h,
              width: w,
              child: Image.asset(
                'assets/images/bg_macos.jpg',
                fit: fit, // cover/contain/fill…
                color: Colors.purple.withValues(alpha: 0.4),
                colorBlendMode: BlendMode.darken,
              ),
            ),
          ),
        );
      },
    );
  }
}

