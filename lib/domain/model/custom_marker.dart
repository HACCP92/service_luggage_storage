class CustomMarker {
  final MarkerId markerId;
  final double latitude;
  final double longitude;
  final String imageUrl;
  final int smallSizeCount;
  final int mediumSizeCount;
  final int largeSizeCount;

  CustomMarker({
    required this.markerId,
    required this.latitude,
    required this.longitude,
    required this.imageUrl,
    required this.smallSizeCount,
    required this.mediumSizeCount,
    required this.largeSizeCount,
  });
}

class MarkerId {}
