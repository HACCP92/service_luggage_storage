import 'package:flutter/material.dart';
import 'package:service_luggage_storage/presentation/home/address.dart';

class AddressItem extends StatelessWidget {
  final Icon icon;
  final Address address;

  const AddressItem({
    super.key,
    required this.address,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: icon,
      title: Text(address.title),
      subtitle: Text(address.address),
    );
  }
}
