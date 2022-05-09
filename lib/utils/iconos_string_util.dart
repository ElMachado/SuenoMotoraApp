import 'package:flutter/material.dart';

final _icons = <String, IconData>{
  'badge_outlined': Icons.badge_outlined,
  'account_circle': Icons.account_circle,
  'devices_outlined': Icons.devices_outlined,
  'backpack_outlined': Icons.backpack_outlined,
  'send_outlined': Icons.send_outlined,
  'person_outline': Icons.person,
  'person_add_outlined': Icons.person_add_outlined,
  'person_remove_outlined': Icons.person_remove_outlined,
  'telefono': Icons.phone,
  'email': Icons.email,
  'processor': Icons.computer,
  'memory': Icons.memory,
  'storage': Icons.storage,
  'battery': Icons.battery_full,
  'observaciones': Icons.comment,
  'escuela': Icons.school,
  'solicitud': Icons.question_answer,
  'direccion': Icons.location_on,
  'contenido': Icons.auto_stories
};

Icon getIcon(String nombreIcono) {
  return Icon(
    _icons[nombreIcono],
    color: Colors.green,
  );
}
