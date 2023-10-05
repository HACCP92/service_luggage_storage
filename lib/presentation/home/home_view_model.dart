import 'package:geolocator/geolocator.dart';
import 'package:flutter_naver_map/flutter_naver_map.dart';

class HomeViewModel {
  _NaverMapControllerImpl? _controller;
  NMarker? _currentLocationMarker;

  Future<void> initMapController() async {
    final Position position = await Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.high,
    );

    _addCurrentLocationMarker(position);
  }

  void setMapController(_NaverMapControllerImpl controller) {
    _controller = controller;
  }

  void _addCurrentLocationMarker(Position position) {
    final NLatLng currentLatLng =
        NLatLng(position.latitude, position.longitude);

    if (_currentLocationMarker != null) {
      _controller?.removeOverlay(_currentLocationMarker!);
    }

    final NMarker currentLocationMarker = NMarker(
      id: 'current_location',
      icon: NOverlayImage.fromAssetImage('assets/marker_icon.png'),
      position: currentLatLng,
    );

    _controller?.addOverlay(currentLocationMarker);

    _currentLocationMarker = currentLocationMarker;
  }
}

class _NaverMapControllerImpl {
  void removeOverlay(NMarker nMarker) {}

  void addOverlay(NMarker currentLocationMarker) {}
}
