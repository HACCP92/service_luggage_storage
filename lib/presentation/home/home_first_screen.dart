import 'package:flutter/material.dart';
import 'package:flutter_naver_map/flutter_naver_map.dart';
import 'package:geolocator/geolocator.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeFirstScreen(),
    );
  }
}

class HomeFirstScreen extends StatefulWidget {
  const HomeFirstScreen({Key? key}) : super(key: key);

  @override
  _HomeFirstScreenState createState() => _HomeFirstScreenState();
}

class _HomeFirstScreenState extends State<HomeFirstScreen> {
  _NaverMapControllerImpl? _controller;
  NMarker? _currentLocationMarker;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NaverMap(
        options: const NaverMapViewOptions(
          indoorEnable: true,
          locationButtonEnable: true,
          consumeSymbolTapEvents: false,
          initialCameraPosition: NCameraPosition(
            target: NLatLng(37.476839, 126.964602),
            zoom: 15,
            bearing: 0,
            tilt: 0,
          ),
        ),
        onMapReady: (controller) async {
          setState(() {
            _controller = controller as _NaverMapControllerImpl?;
          });

          // 현재 위치를 가져옵니다.
          final Position position = await Geolocator.getCurrentPosition(
            desiredAccuracy: LocationAccuracy.high,
          );

          // 현재 위치에 마커를 추가합니다.
          _addCurrentLocationMarker(position);
        },
      ),
    );
  }

  void _addCurrentLocationMarker(Position position) {
    final NLatLng currentLatLng =
        NLatLng(position.latitude, position.longitude);

    // 기존 마커가 있다면 제거합니다.
    if (_currentLocationMarker != null) {
      _controller?.removeOverlay(_currentLocationMarker!);
    }

    // 새로운 현재 위치 마커를 생성합니다.
    final NMarker currentLocationMarker = NMarker(
      id: 'current_location',
      icon: NOverlayImage.fromAssetImage('assets/marker_icon.png'),
      position: currentLatLng,
    );

    // 지도에 마커를 추가합니다.
    _controller?.addOverlay(currentLocationMarker);

    setState(() {
      _currentLocationMarker = currentLocationMarker;
    });
  }
}

class _NaverMapControllerImpl {
  void removeOverlay(NMarker nMarker) {}

  void addOverlay(NMarker currentLocationMarker) {}
}
