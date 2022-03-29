import 'package:flutter/material.dart';
import 'package:suenomotora_app/Solicitudes/ui/screens/responsive/solicitudes_escuelas_Desktop.dart';
import 'package:suenomotora_app/Solicitudes/ui/screens/responsive/solicitudes_escuelas_movil.dart';
import 'package:suenomotora_app/Solicitudes/ui/screens/responsive/solicitudes_escuelas_tablet.dart';
import 'package:suenomotora_app/common/cards.dart';
import 'package:suenomotora_app/common/floating_button.dart';
import 'package:suenomotora_app/common/responsive.dart';
import 'package:suenomotora_app/common/responsive/vistaTamanoVentanaMuyPequeno.dart'
    show VentanaMuyPequena;

class SolicitudesDeEscuelas extends StatefulWidget {
  const SolicitudesDeEscuelas({Key? key}) : super(key: key);

  @override
  State<SolicitudesDeEscuelas> createState() => _SolicitudesDeEscuelas();
}

class _SolicitudesDeEscuelas extends State<SolicitudesDeEscuelas> {
  Cards card = Cards();
  FloatingButton floButton = FloatingButton();
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ResponsibleLayout(
          ventanaMuyPequena: VentanaMuyPequena(),
          mobileBody: SolicitudesEscuelasMovil(),
          tabletBody: SolicitudesEscuelasTablet(),
          desktopBody: SolicitudesEscuelasDesktop()),
    );
  }
}
