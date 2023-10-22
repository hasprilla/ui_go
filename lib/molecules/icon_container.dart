import 'package:flutter/material.dart';

class UiGoIconContainer extends StatelessWidget {
  const UiGoIconContainer({
    super.key,
    required this.size,
  }) : assert(size > 0);

  final double size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size,
      width: size,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(size * 0.15),
          boxShadow: const [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 25,
              offset: Offset(0, 15),
            )
          ]),
      padding: EdgeInsets.all(size * 0.15),
      child: Center(
        child: Icon(
          Icons.auto_awesome,
          size: size * 0.7,
        ),
      ),
    );
  }
}
