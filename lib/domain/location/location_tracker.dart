abstract interface class LocationTracker {
  // 위도 경도
  Future<(double, double)> getLocation();
}
