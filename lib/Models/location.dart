import 'location_fact.dart';

class Location {
  final int id;
  late String name;
  late String imagePath;
  late final List<LocationFact> facts;
  Location(this.id, this.name, this.imagePath, this.facts);

  static List<Location> fetchAll() {
    return [
      Location(1, 'Kiyomizu Dera 1', 'assets/images/kiyomizu-dera.jpg', [
        LocationFact('Summary', 'Hello this is summary'),
        LocationFact('How to get there',
            'Airpot to that location is very easy is way of going ')
      ]),
      Location(2, 'Fuji', 'assets/images/fuji.jpg', [
        LocationFact('Summary', 'Hello this is summary'),
        LocationFact('How to get there',
            'Japan Mt. Fuji is an active volcano about 100 kilometers southwest of Tokyo. Commonly called “Fuji-san,” it’s the country’s tallest peak, at 3,776 meters. A pilgrimage site for centuries, it’s considered one of Japan’s 3 sacred mountains, and summit hikes remain a popular activity. Its iconic profile is the subject of numerous works of art ')
      ]),
      Location(3, 'Arashiyama', 'assets/images/arashiyama.jpg', [
        LocationFact('Summary', 'Hello this is summary'),
        LocationFact('How to get there',
            'Kyoto airport, with several terminals, is located 16 kilometres south of the city and is also known as Kyoto. Kyoto can also be reached by transport links from other regional airports.')
      ])
    ];
  }

  static Location fetchByID(int locationId) {
    List<Location> locations = Location.fetchAll();
    for (var i = 0; i < locations.length; i++) {
      if (locationId == locations[i].id) {
        return locations[i];
      }
    }
    return locations.first;
  }
}
