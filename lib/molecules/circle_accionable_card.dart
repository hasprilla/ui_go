import 'package:flutter/material.dart';

import '../ui_go.dart';

class UiGoCircleAccionableCard extends StatelessWidget {
  final String routeAssetImage;
  final String title;
  final String nameOfCardLabel;
  final String descriptionOfActionLabel;
  final VoidCallback actionCard;
  const UiGoCircleAccionableCard(
      {Key? key,
      required this.routeAssetImage,
      required this.title,
      required this.actionCard,
      required this.nameOfCardLabel,
      required this.descriptionOfActionLabel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Semantics(
      label:
          'Tap the $nameOfCardLabel card to execute $descriptionOfActionLabel',
      child: InkWell(
          excludeFromSemantics: true,
          onTap: actionCard,
          child: Container(
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: UiGoColorsFoundation.cardCircularBgColor,
              ),
              width: UiGoSizesFoundation.sizeCircleAccionableCard,
              height: UiGoSizesFoundation.sizeCircleAccionableCard,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    UiGoAssetImage(path: routeAssetImage, widthImage: 100),
                    ExcludeSemantics(
                      child: Text(
                        title,
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                    ),
                  ]))),
    );
  }
}
