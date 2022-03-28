import 'package:flutter/material.dart';
import 'package:suenomotora_app/pages/map_page.dart';
import 'package:suenomotora_app/routes/routes.dart';

void main() => runApp(const SuenoMotoraApp());

class SuenoMotoraApp extends StatelessWidget {
  const SuenoMotoraApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sueñomotora App',
      initialRoute: '/',
      routes: getApplicationsRoutes(),
      onGenerateRoute: (RouteSettings settings) {
        return MaterialPageRoute(
            builder: (BuildContext context) => const InicioMapa());
      },
    );
  }
}
