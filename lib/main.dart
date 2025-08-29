import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:suenomotora_app/Map/ui/screens/map_page.dart';
import 'package:suenomotora_app/firebase_options.dart';
import 'package:suenomotora_app/providers/envios_provider.dart';
import 'package:suenomotora_app/routes/routes.dart';

Future<void> main() async {
  // Correct initialization order
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(
    // Setting up providers for state management
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => EnviosProvider()),
      ],
      child: const SuenoMotoraApp(),
    ),
  );
}

class SuenoMotoraApp extends StatelessWidget {
  const SuenoMotoraApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // Modernized theme with Material 3
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.green,
          brightness: Brightness.light,
        ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      title: 'Sueñomotora App',
      initialRoute: '/',
      routes: getApplicationsRoutes(),
      // Robust error handling for unknown routes
      onGenerateRoute: (RouteSettings settings) {
        return MaterialPageRoute(
          builder: (BuildContext context) => Scaffold(
            appBar: AppBar(title: const Text('Error')),
            body: Center(
              child: Text('La ruta ${settings.name} no fue encontrada.'),
            ),
          ),
        );
      },
    );
  }
}
