import 'package:flutter/material.dart';
import 'package:suenomotora_app/Persona/Donante/ui/screens/Responsive/donantes_desktop.dart';
import 'package:suenomotora_app/Persona/Donante/ui/screens/Responsive/donantes_movil.dart';
import 'package:suenomotora_app/Persona/Donante/ui/screens/Responsive/donantes_tablet.dart';
import 'package:suenomotora_app/common/widgets/floating_button.dart';
import 'package:suenomotora_app/common/responsive/responsive.dart';

import 'package:suenomotora_app/common/responsive/vista_tamano_ventana_muy_pequeno.dart';

class DonantesPage extends StatefulWidget {
  const DonantesPage({Key? key}) : super(key: key);

  @override
  State<DonantesPage> createState() => _DonantesPage();
}

class _DonantesPage extends State<DonantesPage> {
  FloatingButton floButton = FloatingButton();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ResponsibleLayout(
          ventanaMuyPequena: const VentanaMuyPequena(),
          mobileBody: DonatesMovil(),
          tabletBody: const DonantesTablet(),
          desktopBody: const DonatesDesktop()),
    );
  }
}
