import 'package:flutter/material.dart';
import 'package:suenomotora_app/Persona/Colaborador/ui/screens/Responsive/colaboradores_desktop.dart';
import 'package:suenomotora_app/Persona/Colaborador/ui/screens/Responsive/colaboradores_movile.dart';
import 'package:suenomotora_app/common/responsive/responsive.dart';
import 'package:suenomotora_app/common/responsive/vista_tamano_ventana_muy_pequeno.dart';

import 'Responsive/colaboradores_tablet.dart';

class Colaboradores extends StatefulWidget {
  const Colaboradores({Key? key}) : super(key: key);

  @override
  State<Colaboradores> createState() => _ColaboradoresState();
}

class _ColaboradoresState extends State<Colaboradores> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ResponsibleLayout(
          ventanaMuyPequena: VentanaMuyPequena(),
          mobileBody: ColaboradoresMovil(),
          tabletBody: ColaboradoresTablet(),
          desktopBody: ColaboradoresDesktop()),
    );
  }
}
