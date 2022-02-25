import 'package:flutter/material.dart';
import 'package:suenomotora_app/common/cards.dart';

import 'package:suenomotora_app/common/floating_button.dart';
import 'package:suenomotora_app/common/responsive.dart';
import 'package:suenomotora_app/common/responsive/vistaTamanoVentanaMuyPeque%C3%B1o.dart';

import '../common/responsive/equipos/equiposTablet.dart';
import '../common/responsive/equipos/equipos_desktop.dart';
import '../common/responsive/equipos/equipos_movile.dart';

class EquiposPage extends StatefulWidget {
  const EquiposPage({Key? key}) : super(key: key);

  @override
  State<EquiposPage> createState() => _EquiposPage();
}

class _EquiposPage extends State<EquiposPage> {
  Cards card = Cards();
  FloatingButton floButton = FloatingButton();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const ResponsibleLayout(
          VentanaMuyPequena: VentanaMuyPequena(),
          mobileBody: EquiposMovile(),
          tabletBody: EquiposTablet(),
          desktopBody: EquiposDesktop()),
    );
  }
}
