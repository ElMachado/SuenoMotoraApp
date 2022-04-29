import 'package:flutter/material.dart';
import 'package:suenomotora_app/Equipos/ui/screens/responsive/equipos_tablet.dart';
import 'package:suenomotora_app/Equipos/ui/screens/responsive/equipos_desktop.dart';
import 'package:suenomotora_app/Equipos/ui/screens/responsive/equipos_movile.dart';

import 'package:suenomotora_app/common/widgets/floating_button.dart';
import 'package:suenomotora_app/common/responsive/responsive.dart';
import 'package:suenomotora_app/common/responsive/vista_tamano_ventana_muy_pequeno.dart';

class EquiposPage extends StatefulWidget {
  const EquiposPage({Key? key}) : super(key: key);

  @override
  State<EquiposPage> createState() => _EquiposPage();
}

class _EquiposPage extends State<EquiposPage> {
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
