import 'package:flutter/material.dart';

class ImageBanner extends StatelessWidget {
  final String _path;

  ImageBanner(this._path);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints.expand(height: 200.0),
      decoration: BoxDecoration(color: Colors.grey),
      // Adding image asset to screen
      child: Image.asset(
        _path,
        // Fiting to cover the box
        fit: BoxFit.cover,
      ),
    );
  }
}
