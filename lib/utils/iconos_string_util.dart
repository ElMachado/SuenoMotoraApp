import 'package:flutter/material.dart';

final _icons = <String, IconData>{
  'badge_outlined': Icons.badge_outlined,
  'account_circle': Icons.account_circle,
  'devices_outlined': Icons.devices_outlined,
  'backpack_outlined': Icons.backpack_outlined,
  'send_outlined': Icons.send_outlined,
};

Icon getIcon(String nombreIcono) {
  return Icon(
    _icons[nombreIcono],
    color: Colors.blue,
  );
}
