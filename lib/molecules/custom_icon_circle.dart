import 'package:flutter/material.dart';

class UiGoCustomIconCircle extends StatelessWidget {
  const UiGoCustomIconCircle({
    super.key,
    required this.size,
    required this.colors,
  })  : assert(size > 0),
        assert(colors.length >= 2);

  final double size;
  final List<Color> colors;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
        shape: BoxShape.circle,
      ),
    );
  }
}
