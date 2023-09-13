import 'package:flutter/material.dart';
import 'package:flutter_naver_map/flutter_naver_map.dart';

class HomeFirstScreen extends StatelessWidget {
  const HomeFirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final marker =
        NMarker(id: 'test', position: NLatLng(37.476839, 126.964602));
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
              tilt: 0),
        ),
        onMapReady: (controller) async {
          controller.addOverlay(marker);
          // 지도 컨트롤러가 준비되었을 때 수행할 작업
        },
      ),
    );
  }
}
