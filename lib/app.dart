// app.dart

import 'dart:html';

import 'package:flutter/material.dart';
import 'package:location_task/Models/location.dart';
import 'screens/location_list.dart';
import 'screens/location_detail.dart';
import 'style.dart';

const LocationsRoute = '/';
const LocationDetailRoute = '/location_detail';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        onGenerateRoute: _routes(), home: LocationList(), theme: _themeData());
  }

  RouteFactory _routes() {
    return (settings) {
      final arguments = settings.arguments as Map<String, dynamic>;
      Widget screen;
      switch (settings.name) {
        case LocationsRoute:
          screen = LocationList();
          break;
        case LocationDetailRoute:
          screen = LocationDetail(arguments['id']);
          break;
        default:
          return null;
      }
      return MaterialPageRoute(builder: (BuildContext context) => screen);
    };
  }

  ThemeData _themeData() {
    return ThemeData(
        appBarTheme:
            AppBarTheme(textTheme: TextTheme(titleLarge: AppBarTextStyle)),
        textTheme: TextTheme(
          titleLarge: TitleTextStyle,
          bodyMedium: Body1TextStyle,
        ));
  }
}
