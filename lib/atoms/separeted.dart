import 'package:flutter/material.dart';

import '../ui_go.dart';

class UiGoSepareted extends StatelessWidget {
  final double nSepareted;
  const UiGoSepareted({Key? key, required this.nSepareted}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: nSepareted * UiGoSizesFoundation.baseSepareted,
    );
  }
}
