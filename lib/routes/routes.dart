import 'package:flutter/material.dart';
import 'package:suenomotora_app/pages/colaboradores_page.dart';
import 'package:suenomotora_app/pages/donante_page.dart';
import 'package:suenomotora_app/pages/envios_page.dart';
import 'package:suenomotora_app/pages/equipos_page.dart';
import 'package:suenomotora_app/pages/map_page.dart';
import 'package:suenomotora_app/pages/solicitudes_de_escuelas_page.dart';

Map<String, WidgetBuilder> getApplicationsRoutes() {
  return <String, WidgetBuilder>{
    '/': (BuildContext context) => const InicioMapa(),
    'colaboradores': (BuildContext context) => const Colaboradores(),
    'donantes': (BuildContext context) => const DonantesPage(),
    'equipos': (BuildContext context) => const EquiposPage(),
    'solicitudesEscuela': (BuildContext context) =>
        const SolicitudesDeEscuelas(),
    'envios': (BuildContext context) => EnviosPage()
  };
}
