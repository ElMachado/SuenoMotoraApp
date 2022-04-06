import 'package:flutter/material.dart';

class FloatingButton {
  Widget floatingButton({required Function btnAction}) {
    return FloatingActionButton(
        child: const Icon(Icons.add, color: Colors.green),
        onPressed: () => btnAction());
  }
}
