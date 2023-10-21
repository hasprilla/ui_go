import 'package:flutter/material.dart';

class UiGoAssetImage extends StatelessWidget {
  final String path;
  final double widthImage;

  const UiGoAssetImage({
    Key? key,
    required this.path,
    required this.widthImage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget imageAsset = Expanded(
      child: Image.network(
        path,
        width: widthImage,
        height: widthImage,
      ),
    );
    return imageAsset;
  }
}
