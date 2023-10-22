import 'package:flutter/material.dart';
import 'package:ui_go/ui_go.dart';

class CustomMaterialButton extends StatelessWidget {
  const CustomMaterialButton({
    super.key,
    required this.responsive,
    required this.text,
    this.onPressed,
  });

  final UiGoResponsive responsive;
  final String text;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      color: Colors.transparent,
      elevation: 0,
      hoverColor: Colors.transparent,
      child: Text(
        text,
        style: TextStyle(
          color: Colors.pinkAccent,
          fontSize: responsive.dp(
            responsive.isTablet ? 1.2 : 1.5,
          ),
        ),
      ),
    );
  }
}
