import 'package:flutter/material.dart';
import 'package:ui_go/ui_go.dart';

class UiGoCustomHeaderCircular extends StatelessWidget {
  final double size;
  final double positionedLeft;
  final double positionedTop;

  const UiGoCustomHeaderCircular({
    Key? key,
    required this.size,
    required this.positionedLeft,
    required this.positionedTop,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: positionedLeft,
      top: positionedTop,
      child: Container(
        height: size,
        width: size,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(size / 2),
          color: UiGoColors.brandPrimary,
        ),
      ),
    );
  }
}

