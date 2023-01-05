// screens/home/home.dart

import 'package:flutter/material.dart';
import 'textsection.dart';
import 'image_banner.dart';
import '../Models/location.dart';

class LocationDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final locations = Location.fetchAll();
    final location = locations.first;
    return Scaffold(
        appBar: AppBar(
          title: Text(location.name),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Adding image asset to screen
            ImageBanner(location.imagePath),

            // TextSection('Summary 1',
            //     'But I must explain tojbjjj jjjnkj jbvvcgh tant pleasure?'),
            // TextSection('Summary 2"',
            //     'At vero eos et accusamus et iusto odio dignissimos  asperiores repellat.'),
            // TextSection('Summary 3',
            //     'On the other hand, we denounce with righteous indignation  pains to avoid worse pains.'),
          ]..addAll(textSections(location)),
        ));
  }

  List<Widget> textSections(Location location) {
    return location.facts
        .map((fact) => TextSection(fact.title, fact.text))
        .toList();
  }
}
