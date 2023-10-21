import 'package:flutter/material.dart';
import 'package:ui_go/atoms/reponsive.dart';

class UiGoCustomPositionedText extends StatelessWidget {
  final double positionedLeft;
  final double positionedTop;
  final String text;
  final double fontSize;
  final Color color;
  final FontWeight fontWeight;

  const UiGoCustomPositionedText({
    Key? key,
    required this.positionedLeft,
    required this.positionedTop,
    required this.text,
    required this.fontSize,
    required this.color,
    required this.fontWeight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: positionedLeft,
      top: positionedTop,
      child: Text(
        text,
        style: TextStyle(
          fontSize: UiGoResponsive.of(context).dp(fontSize),
          color: color,
          fontWeight: fontWeight,
        ),
      ),
    );
  }
}
