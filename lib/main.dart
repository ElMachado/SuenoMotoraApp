import 'package:flutter/material.dart';
import 'package:suenomotora_app/Map/ui/screens/map_page.dart';
import 'package:suenomotora_app/routes/routes.dart';

void main() => runApp(const SuenoMotoraApp());

class SuenoMotoraApp extends StatelessWidget {
  const SuenoMotoraApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          visualDensity: VisualDensity.adaptivePlatformDensity,
          colorScheme: ColorScheme.fromSwatch(
            primarySwatch: Colors.green,
            cardColor: Colors.amber,
            accentColor: const Color.fromARGB(255, 0, 54, 3),
            errorColor: Colors.red,
            brightness: Brightness.light,
            primaryColorDark: const Color.fromARGB(255, 5, 51, 7),
          ).copyWith(secondary: Colors.yellowAccent)),
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
