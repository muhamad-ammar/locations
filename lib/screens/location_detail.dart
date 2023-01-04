// screens/home/home.dart

import 'package:flutter/material.dart';
import 'textsection.dart';
import 'image_banner.dart';

class LocationDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Hello'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Adding image asset to screen
            ImageBanner('assets/images/kiyomizu-dera.jpg'),
            TextSection('Summary 1',
                'But I must explain tojbjjj jjjnkj jbvvcgh tant pleasure?'),
            TextSection('Summary 2"',
                'At vero eos et accusamus et iusto odio dignissimos  asperiores repellat.'),
            TextSection('Summary 3',
                'On the other hand, we denounce with righteous indignation  pains to avoid worse pains.'),
          ],
        ));
  }
}
