import 'package:flutter/material.dart';
import '../app.dart';
import '../Models/location.dart';

class LocationList extends StatelessWidget {
  final locations = Location.fetchAll();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Locations'),
      ),
      body: ListView(
        children: locations
            .map((location) => GestureDetector(
                child: Text(location.name),
                onTap: () => _onLocationTap(context, location.id)))
            .toList(),
      ),
    );
  }

  _onLocationTap(BuildContext context, int locationid) {
    Navigator.pushNamed(context, LocationDetailRoute,
        arguments: {"id": locationid});
  }
}
