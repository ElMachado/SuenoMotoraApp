import 'package:flutter/material.dart';
import 'package:suenomotora_app/common/cards.dart';
import 'package:suenomotora_app/common/floating_button.dart';
import 'package:suenomotora_app/common/responsive.dart';
import 'package:suenomotora_app/common/responsive/envios/envio_desktop.dart';
import 'package:suenomotora_app/common/responsive/envios/envio_movile.dart';
import 'package:suenomotora_app/common/responsive/envios/envio_tablet.dart';
import 'package:suenomotora_app/common/responsive/vistaTamanoVentanaMuyPeque%C3%B1o.dart';

class EnviosPage extends StatefulWidget {
  const EnviosPage({Key? key}) : super(key: key);

  @override
  State<EnviosPage> createState() => _EnviosPage();
}

class _EnviosPage extends State<EnviosPage> {
  Cards card = Cards();
  FloatingButton floButton = FloatingButton();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ResponsibleLayout(
            VentanaMuyPequena: VentanaMuyPequena(),
            mobileBody: EnviosMovil(),
            tabletBody: EnviosTablet(),
            desktopBody: EnviosDesktop()));
  }
}
