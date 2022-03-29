import 'package:flutter/material.dart';
import 'package:suenomotora_app/Persona/Colaborador/ui/screens/colaboradores_page.dart';
import 'package:suenomotora_app/Persona/Donante/ui/screens/donante_page.dart';
import 'package:suenomotora_app/Envios/ui/screens/envios_page.dart';
import 'package:suenomotora_app/Equipos/ui/screens/equipos_page.dart';
import 'package:suenomotora_app/pages/map_page.dart';
import 'package:suenomotora_app/Solicitudes/ui/screens/solicitudes_de_escuelas_page.dart';

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
