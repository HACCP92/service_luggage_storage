import 'package:geolocator/geolocator.dart';

import '../domain/location/location_tracker.dart';

class GeolocatorLocationTracker implements LocationTracker {
  @override
  Future<(double, double)> getLocation() async {
    try {
      final position = await _determinePosition();
      return (position.latitude, position.longitude);
    } catch (e) {
      throw Exception('Location 에러');
    }
  }

  Future<Position> _determinePosition() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      throw Exception(
          'Location services are disabled.'); // 위치 서비스가 비활성화된 경우 예외 처리
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.deniedForever) {
      throw Exception('Location permission is permanently denied.');
    }

    return await Geolocator.getCurrentPosition();
  }
}
