import 'package:flutter/material.dart';
import 'package:suenomotora_app/Equipos/ui/screens/responsive/equiposTablet.dart';
import 'package:suenomotora_app/Equipos/ui/screens/responsive/equipos_desktop.dart';
import 'package:suenomotora_app/Equipos/ui/screens/responsive/equipos_movile.dart';
import 'package:suenomotora_app/common/cards.dart';

import 'package:suenomotora_app/common/floating_button.dart';
import 'package:suenomotora_app/common/responsive.dart';
import 'package:suenomotora_app/common/responsive/vistaTamanoVentanaMuyPequeno.dart';

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
    return const Scaffold(
      body: ResponsibleLayout(
          ventanaMuyPequena: VentanaMuyPequena(),
          mobileBody: EquiposMovile(),
          tabletBody: EquiposTablet(),
          desktopBody: EquiposDesktop()),
    );
  }
}
