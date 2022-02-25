import 'package:flutter/material.dart';
import 'package:suenomotora_app/common/cards.dart';
import 'package:suenomotora_app/common/floating_button.dart';
import 'package:suenomotora_app/common/responsive.dart';
import 'package:suenomotora_app/common/responsive/colaboradores/colaboradores_desktop.dart';
import 'package:suenomotora_app/common/responsive/colaboradores/colaboradores_movile.dart';
import 'package:suenomotora_app/common/responsive/colaboradores/colaboradores_tablet.dart';
import 'package:suenomotora_app/common/responsive/vistaTamanoVentanaMuyPeque%C3%B1o.dart';

class Colaboradores extends StatefulWidget {
  const Colaboradores({Key? key}) : super(key: key);

  @override
  State<Colaboradores> createState() => _ColaboradoresState();
}

class _ColaboradoresState extends State<Colaboradores> {
  Cards card = Cards();
  FloatingButton floButton = FloatingButton();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const ResponsibleLayout(
          VentanaMuyPequena: VentanaMuyPequena(),
          mobileBody: ColaboradoresMovil(),
          tabletBody: ColaboradoresTablet(),
          desktopBody: ColaboradoresDesktop()),
    );
  }
}
