import 'package:flutter/material.dart';
import 'package:suenomotora_app/Persona/Donante/ui/screens/Responsive/donantes_desktop.dart';
import 'package:suenomotora_app/Persona/Donante/ui/screens/Responsive/donantes_movil.dart';
import 'package:suenomotora_app/Persona/Donante/ui/screens/Responsive/donantes_tablet.dart';
import 'package:suenomotora_app/common/widgets/cards.dart';
import 'package:suenomotora_app/common/widgets/floating_button.dart';
import 'package:suenomotora_app/common/responsive.dart';

import 'package:suenomotora_app/common/responsive/vistaTamanoVentanaMuyPequeno.dart';

class DonantesPage extends StatefulWidget {
  const DonantesPage({Key? key}) : super(key: key);

  @override
  State<DonantesPage> createState() => _DonantesPage();
}

class _DonantesPage extends State<DonantesPage> {
  Cards card = Cards();
  FloatingButton floButton = FloatingButton();
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ResponsibleLayout(
          ventanaMuyPequena: VentanaMuyPequena(),
          mobileBody: DonatesMovil(),
          tabletBody: DonantesTablet(),
          desktopBody: DonatesDesktop()),
    );
  }
}
