import 'package:flutter/material.dart';
import 'package:suenomotora_app/common/cards.dart';
import 'package:suenomotora_app/common/floating_button.dart';
import 'package:suenomotora_app/common/responsive.dart';
import 'package:suenomotora_app/common/responsive/colaboradores/colaboradores_movile.dart';
import 'package:suenomotora_app/common/responsive/colaboradores/colaboradores_tablet.dart';
import 'package:suenomotora_app/common/responsive/donantes/donantes_desktop.dart';
import 'package:suenomotora_app/common/responsive/donantes/donantes_movil.dart';
import 'package:suenomotora_app/common/responsive/donantes/donantes_tablet.dart';
import 'package:suenomotora_app/common/responsive/vistaTamanoVentanaMuyPeque%C3%B1o.dart';
import 'package:suenomotora_app/pages/colaboradores_page.dart';

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
    return Scaffold(
      body: const ResponsibleLayout(
          VentanaMuyPequena: VentanaMuyPequena(),
          mobileBody: DonatesMovil(),
          tabletBody: DonantesTablet(),
          desktopBody: DonatesDesktop()),
    );
  }
}
