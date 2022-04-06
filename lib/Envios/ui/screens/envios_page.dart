import 'package:flutter/material.dart';
import 'package:suenomotora_app/Envios/ui/screens/responsive/envio_desktop.dart';
import 'package:suenomotora_app/Envios/ui/screens/responsive/envio_movile.dart';
import 'package:suenomotora_app/Envios/ui/screens/responsive/envio_tablet.dart';
import 'package:suenomotora_app/common/responsive/responsive.dart';

import 'package:suenomotora_app/common/responsive/vistaTamanoVentanaMuyPequeno.dart';

class EnviosPage extends StatefulWidget {
  const EnviosPage({Key? key}) : super(key: key);

  @override
  State<EnviosPage> createState() => _EnviosPage();
}

class _EnviosPage extends State<EnviosPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ResponsibleLayout(
            ventanaMuyPequena: const VentanaMuyPequena(),
            mobileBody: EnviosMovil(),
            tabletBody: const EnviosTablet(),
            desktopBody: const EnviosDesktop()));
  }
}
