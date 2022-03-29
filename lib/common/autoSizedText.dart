import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

AutoSizeGroup autoSizeGroup = AutoSizeGroup();
Widget autoSizeText(String text) {
  return AutoSizeText(
    text,
    group: autoSizeGroup,
    wrapWords: true,
    strutStyle: const StrutStyle(
      fontSize: 20.0,
    ),
    presetFontSizes: const [25, 20, 15, 10],
    maxLines: 3,
    overflow: TextOverflow.fade,
    stepGranularity: 10,
  );
}
