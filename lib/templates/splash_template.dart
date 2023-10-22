import 'package:flutter/material.dart';

class UiGoSplashTemplate extends StatelessWidget {
  const UiGoSplashTemplate({super.key});

  @override
  Widget build(BuildContext context) {
    return const Directionality(
      textDirection: TextDirection.ltr,
      child: Material(
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                height: 80,
                width: 80,
                child: CircularProgressIndicator(
                  strokeWidth: 1,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
