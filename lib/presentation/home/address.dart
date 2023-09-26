// address.dart 파일에 정의

class Address {
  final String street;
  final String city;
  final String state;

  Address({
    required this.street,
    required this.city,
    required this.state,
  });

  // JSON serialization methods (if needed)
  Map<String, dynamic> toJson() {
    return {
      'street': street,
      'city': city,
      'state': state,
    };
  }

  factory Address.fromJson(Map<String, dynamic> json) {
    return Address(
      street: json['street'],
      city: json['city'],
      state: json['state'],
    );
  }
}
