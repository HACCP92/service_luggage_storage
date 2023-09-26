import 'package:flutter/cupertino.dart';
import 'package:service_luggage_storage/data/geolocator_location_tracker.dart';
import 'package:service_luggage_storage/domain/location/location_tracker.dart';
import 'package:service_luggage_storage/presentation/home/home_state.dart';

class HomeViewModel with ChangeNotifier {
  final LocationTracker _locationTracker = GeolocatorLocationTracker();

  HomeState _state = HomeState(username: '천정환');
  HomeState get state => _state;

  HomeViewModel() {
    _locationTracker.getLocation().then((location) {
      final newState = state.copyWith(currentLocation: location);
      _state = newState;
      notifyListeners();
    });
  }
}
