import 'package:mapbox_gl/mapbox_gl.dart';
import 'package:mapbox_navigation/main.dart';

import '../constants/busses.dart';
import '../requests/mapbox_requests.dart';

Future<Map> getDirectionsAPIResponse(LatLng currentLatLng, int index) async {
  final response = await getRouteUsingMapbox(
      currentLatLng,
      LatLng(double.parse(busses[index]['coordinates']['latitude']),
          double.parse(busses[index]['coordinates']['longitude'])));

  Map geometry = response['routes'][0]['geometry'];
  num duration = response['routes'][0]['duration'];
  num distance = response['routes'][0]['distance'];

  print('-------------------${busses[index]['name']}-------------------');
  print(distance);
  print(duration);

  Map modifiedResponse = {
    "geometry": geometry,
    "duration": duration,
    "distance": distance,
  };
  return modifiedResponse;
}

void saveDirectionsAPIResponse(int index, String response) {
  sharedPreferences.setString('restaurant--$index', response);
}
