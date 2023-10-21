import 'package:flutter/material.dart';

class UiGoImage extends StatelessWidget {
  final String url;
  final double widthImage;
  final double heightImage;

  const UiGoImage(
      {Key? key,
      required this.url,
      required this.widthImage,
      required this.heightImage})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget imageNetwork = Image.network(
      url,
      width: widthImage,
      height: heightImage,
    );
    return imageNetwork;
  }
}
