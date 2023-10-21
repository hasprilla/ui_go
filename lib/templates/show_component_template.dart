import 'package:flutter/material.dart';

import '../ui_go.dart';

class UiGoShowComponentTemplate extends StatelessWidget {
  final String title;
  final String longDescription;
  final List<Widget> listOfWidgets;
  const UiGoShowComponentTemplate(
      {Key? key,
      required this.title,
      required this.longDescription,
      required this.listOfWidgets})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:
          BoxDecoration(color: Theme.of(context).colorScheme.background),
      child: Scaffold(
        appBar: AppBar(title: Text(title)),
        body: Column(
          children: [
            Container(
                padding: const EdgeInsets.only(top: 21, bottom: 13, left: 21),
                decoration: const BoxDecoration(
                    color: UiGoColorsFoundation.infoBgColor),
                child: Text(
                  longDescription,
                  style: const TextStyle(
                      color: UiGoColorsFoundation.colorWhite,
                      fontFamily: UiGoTypography.familyOpenSans,
                      fontWeight: FontWeight.w800,
                      fontSize: UiGoTypography.sizeSM),
                )),
            const UiGoSepareted(
              nSepareted: 0.5,
            ),
            Container(
              height: 500,
              padding: const EdgeInsets.all(21.0),
              child: ListView.separated(
                  itemBuilder: (context, index) => listOfWidgets[index],
                  separatorBuilder: (context, _) =>
                      const UiGoSepareted(nSepareted: 0.5),
                  itemCount: listOfWidgets.length),
            ),
          ],
        ),
      ),
    );
  }
}
