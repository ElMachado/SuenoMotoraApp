import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

AutoSizeGroup autoSizeGroup = AutoSizeGroup();
Widget autoSizeText(
  String text,
) {
  return AutoSizeText(
    text,
    group: autoSizeGroup,
    wrapWords: true,
    strutStyle: const StrutStyle(
      fontSize: 15.0,
    ),
    presetFontSizes: const [20, 19, 18, 17, 16, 15, 10, 5],
    maxLines: 2,
    overflow: TextOverflow.fade,
    stepGranularity: 10,
  );
}
