import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class FloatingButton {
  Widget floatingButton({required Function btnAction}) {
    return FloatingActionButton(
        child: const Icon(Icons.add), onPressed: () => btnAction());
  }
}
