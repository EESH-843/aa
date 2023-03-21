import 'package:mapbox_gl/mapbox_gl.dart';

import '../constants/busses.dart';

LatLng getLatLngFromRestaurantData(int index) {
  return LatLng(double.parse(busses[index]['coordinates']['latitude']),
      double.parse(busses[index]['coordinates']['longitude']));
}
