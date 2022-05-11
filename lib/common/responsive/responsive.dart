import 'package:flutter/material.dart';

class ResponsibleLayout extends StatelessWidget {
  final Widget ventanaMuyPequena;
  final Widget mobileBody;
  final Widget tabletBody;
  final Widget desktopBody;

  // ignore: use_key_in_widget_constructors
  const ResponsibleLayout(
      {required this.ventanaMuyPequena,
      required this.mobileBody,
      required this.tabletBody,
      required this.desktopBody});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        //        print(constraints);
        //        print(constraints);
        if (constraints.maxWidth < 320) {
          return ventanaMuyPequena;
        } else if (constraints.maxWidth >= 320 && constraints.maxWidth < 610) {
          return mobileBody;
        } else if (constraints.maxWidth > 600 && constraints.maxWidth < 1024) {
          return tabletBody;
        } else {
          return desktopBody;
        }
      },
    );
  }
}
