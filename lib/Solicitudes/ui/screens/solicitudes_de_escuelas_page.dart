import 'package:flutter/material.dart';
import 'package:suenomotora_app/Solicitudes/ui/screens/responsive/solicitudes_escuelas_desktop.dart';
import 'package:suenomotora_app/Solicitudes/ui/screens/responsive/solicitudes_escuelas_movil.dart';
import 'package:suenomotora_app/Solicitudes/ui/screens/responsive/solicitudes_escuelas_tablet.dart';
import 'package:suenomotora_app/common/widgets/floating_button.dart';
import 'package:suenomotora_app/common/responsive/responsive.dart';
import 'package:suenomotora_app/common/responsive/vista_tamano_ventana_muy_pequeno.dart'
    show VentanaMuyPequena;

class SolicitudesDeEscuelas extends StatefulWidget {
  const SolicitudesDeEscuelas({Key? key}) : super(key: key);

  @override
  State<SolicitudesDeEscuelas> createState() => _SolicitudesDeEscuelas();
}

class _SolicitudesDeEscuelas extends State<SolicitudesDeEscuelas> {
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
