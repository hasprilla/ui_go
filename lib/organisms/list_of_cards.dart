import 'package:flutter/material.dart';

import '../ui_go.dart';

class UiGoListOfCards extends StatelessWidget {
  final double? height;
  final List<UiGoCardTile> listCards;
  final Axis scrollDirection;
  const UiGoListOfCards({
    Key? key,
    required this.listCards,
    this.height = 0,
    this.scrollDirection = Axis.vertical,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: (height != 0) ? height : UiGoSizesFoundation.sizeCard,
      child: ListView.separated(
        scrollDirection: scrollDirection,
        itemBuilder: (contex, index) => listCards[index],
        itemCount: listCards.length,
        separatorBuilder: (BuildContext context, int index) =>
            const SizedBox(height: UiGoSpacingFoundation.spaceBetweenCards),
      ),
    );
  }
}
