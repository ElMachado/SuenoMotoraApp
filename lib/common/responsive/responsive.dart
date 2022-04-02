import 'package:flutter/material.dart';

class ResponsibleLayout extends StatelessWidget {
  final Widget ventanaMuyPequena;
  final Widget mobileBody;
  final Widget tabletBody;
  final Widget desktopBody;

  const ResponsibleLayout(
      {required this.ventanaMuyPequena,
      required this.mobileBody,
      required this.tabletBody,
      required this.desktopBody});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        print(constraints);
        if (constraints.maxWidth < 320) {
          return ventanaMuyPequena;
        } else if (constraints.maxWidth >= 320 && constraints.maxWidth < 610) {
          return mobileBody;
        } else if (constraints.maxWidth > 600 && constraints.maxWidth < 1200) {
          return tabletBody;
        } else {
          return desktopBody;
        }
      },
    );
  }
}

// class Responsive {
//   Widget responsiveCard(Size, Widget widgetCard) {
//     return Container(
//         // padding: const EdgeInsets.only(top: 10.0, left: 10.0, right: 10.0),
//         child: Size <= 600
//             ? ListView.builder(
//                 itemBuilder: (context, index) {
//                   return Center(
//                     child: widgetCard,
//                   );
//                 },
//               )
//             : GridView.count(
//                 addAutomaticKeepAlives: true,
//                 childAspectRatio: (500 / 550),
//                 crossAxisCount: Size >= 600 && Size <= 1200 ? 2 : 4,
//                 children: [
//                   Expanded(child: widgetCard),
//                 ],
//               ));
//   }
// }
