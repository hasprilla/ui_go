import 'package:flutter/material.dart';

import '../atoms/asset_image.dart';
import '../atoms/separeted.dart';

class UiGoSuccess extends StatelessWidget {
  const UiGoSuccess({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
        'Success Transaction',
      )),
      body: ListView(
        children: [
          const UiGoSepareted(nSepareted: 0.2),
          Center(
              child: Text(
            'We have happy announcement🥳',
            style: Theme.of(context).textTheme.headlineSmall,
          )),
          const UiGoSepareted(nSepareted: 0.2),
          const Center(
              child: UiGoAssetImage(
                  path: 'assets/images/success.png', widthImage: 200)),
          const UiGoSepareted(nSepareted: 0.2),
          Center(
              child: Text(
            'your transaction was completed successfully',
            style: Theme.of(context).textTheme.headlineSmall,
          )),
        ],
      ),
    );
  }
}
