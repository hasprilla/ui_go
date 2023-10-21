import 'package:flutter/material.dart';

import '../ui_go.dart';

class UiGoCardTile extends StatelessWidget {
  final String? path;
  final String? title;
  final String? id;
  final double? height;
  final double widthImage;
  const UiGoCardTile({
    Key? key,
    this.path = '',
    this.title,
    this.id,
    this.height,
    this.widthImage = 0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? 180,
      decoration: BoxDecoration(
          color: UiGoColorsFoundation.cardBgColor,
          borderRadius: BorderRadius.circular(21)),
      margin: const EdgeInsets.all(10.0),
      padding: const EdgeInsets.only(top: 21.0, left: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (path != '')
            UiGoAssetImage(
              path: path!,
              widthImage: widthImage,
            ),
          SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  width: 200,
                  padding: const EdgeInsets.fromLTRB(10, 2, 10, 0),
                  child: Text(
                    title ?? '',
                    style: Theme.of(context).textTheme.headlineSmall,
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  width: 200,
                  padding: const EdgeInsets.only(left: 34, top: 21),
                  child: Text(id ?? '',
                      style: Theme.of(context).textTheme.titleLarge),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
