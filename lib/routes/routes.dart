import 'package:flutter/material.dart';
import 'package:suenomotora_app/pages/colaboradores_page.dart';
import 'package:suenomotora_app/pages/map_page.dart';

Map<String, WidgetBuilder> getApplicationsRoutes() {
  return <String, WidgetBuilder>{
    '/': (BuildContext context) => const InicioMapa(),
    'colaboradores': (BuildContext context) => Colaboradores(),
  };
}
