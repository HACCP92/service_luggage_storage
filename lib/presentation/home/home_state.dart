import 'address.dart';

class HomeState {
  final String username;
  final String? depart;
  final String? arrive;
  final List<Address> recentlyAddresses;
  final double? latitude;
  final double? longitude;
  final String? imageUrl;
  final int? smallSizeCount;
  final int? mediumSizeCount;
  final int? largeSizeCount;

  HomeState({
    required this.username,
    this.depart,
    this.arrive,
    this.recentlyAddresses = const [],
    this.latitude,
    this.longitude,
    this.imageUrl,
    this.smallSizeCount,
    this.mediumSizeCount,
    this.largeSizeCount,
  });

  HomeState copyWith({
    String? username,
    String? depart,
    String? arrive,
    List<Address>? recentlyAddresses,
    double? latitude,
    double? longitude,
    String? imageUrl,
    int? smallSizeCount,
    int? mediumSizeCount,
    int? largeSizeCount,
    required (double, double) currentLocation,
  }) {
    return HomeState(
      username: username ?? this.username,
      depart: depart ?? this.depart,
      arrive: arrive ?? this.arrive,
      recentlyAddresses: recentlyAddresses ?? this.recentlyAddresses,
      latitude: latitude ?? this.latitude,
      longitude: longitude ?? this.longitude,
      imageUrl: imageUrl ?? this.imageUrl,
      smallSizeCount: smallSizeCount ?? this.smallSizeCount,
      mediumSizeCount: mediumSizeCount ?? this.mediumSizeCount,
      largeSizeCount: largeSizeCount ?? this.largeSizeCount,
    );
  }
}
