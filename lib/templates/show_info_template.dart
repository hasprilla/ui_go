import 'package:flutter/material.dart';

import '../ui_go.dart';

class UiGoShowInfoTemplate extends StatelessWidget {
  final String title;
  final List<ShowInfoDetail> listOfShowInfoDetail;
  const UiGoShowInfoTemplate(
      {Key? key, required this.title, required this.listOfShowInfoDetail})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Container(
        decoration:
            BoxDecoration(color: Theme.of(context).colorScheme.background),
        child: ListView.separated(
            itemBuilder: (_, index) {
              final ShowInfoDetail showInfoDetail = listOfShowInfoDetail[index];
              return GestureDetector(
                onTap: () => Navigator.of(context)
                    .popAndPushNamed(showInfoDetail.componentPage),
                child: UiGoCardTile(
                    path: showInfoDetail.pathImage,
                    title: showInfoDetail.componentTitle,
                    id: showInfoDetail.componentDescription),
              );
            },
            separatorBuilder: (context, _) =>
                const UiGoSepareted(nSepareted: 0.5),
            itemCount: listOfShowInfoDetail.length),
      ),
    );
  }
}
