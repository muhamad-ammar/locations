import 'location_fact.dart';

class Location {
  late String name;
  late String imagePath;
  late final List<LocationFact> facts;
  Location(this.name, this.imagePath, this.facts);
  static List<Location> fetchAll() {
    return [
      Location('Location1', 'assets/images/kiyomizu-dera.jpg', [
        LocationFact('Summary', 'Hello this is summary'),
        LocationFact('How to get there',
            'Airpot to that location is very easy is way of going ')
      ])
    ];
  }
}
