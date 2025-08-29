import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:suenomotora_app/common/responsive/responsive.dart';
import 'package.suenomotora_app/common/responsive/vista_tamano_ventana_muy_pequeno.dart';

import '../../../providers/menu_provider.dart';
import '../../../utils/iconos_string_util.dart';
import '../widgets/form_dialog_detalles_ubicacion.dart';
import '../widgets/form_dialog_registro_ubicacion.dart';

class InicioMapa extends StatefulWidget {
  const InicioMapa({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<InicioMapa> {
  final Completer<GoogleMapController> _controller = Completer();

  // Markers are now stored as a Set<Marker>
  final Set<Marker> _markers = {};

  bool _darkMode = false;
  String? _mapStyle;

  static const CameraPosition _kInitialPosition = CameraPosition(
    target: LatLng(6.242477869248373, -75.58934683509771),
    zoom: 6,
  );

  @override
  void initState() {
    super.initState();
    // Load the dark map style from assets
    rootBundle.loadString('assets/map_style_dark.json').then((string) {
      _mapStyle = string;
    });
    _populateMarkers();
  }

  void _populateMarkers() {
    final List<LatLng> markerLocations = [
      const LatLng(6.242477869248373, -75.58934683509771),
      const LatLng(6.317058123907131, -76.13411297091587),
      const LatLng(6.11473997073584, -75.98395899542803),
      const LatLng(2.421707162646001, -72.60201637355534)
    ];

    for (var i = 0; i < markerLocations.length; i++) {
      final marker = Marker(
        markerId: MarkerId(i.toString()),
        position: markerLocations[i],
        infoWindow: InfoWindow(
          title: 'Ubicación ${i + 1}',
          snippet: 'Detalles de la ubicación',
        ),
        onTap: () => _buildFormDetallesUbicacion(context),
      );
      _markers.add(marker);
    }
    setState(() {});
  }

  void _buildFormDetallesUbicacion(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => const FormDialogDetallesUbicacion(),
    );
  }

  void _onMapCreated(GoogleMapController controller) {
    _controller.complete(controller);
    if (_darkMode) {
      controller.setMapStyle(_mapStyle);
    }
  }

  void _onLongPress(LatLng latLng) {
    FormDialogRegistroUbicacion.formDialogRegistroUbicacion(context);
  }

  Future<void> _gotoDefault() async {
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(_kInitialPosition));
  }

  void _toggleDarkMode() {
    setState(() {
      _darkMode = !_darkMode;
    });
    _controller.future.then((controller) {
      controller.setMapStyle(_darkMode ? _mapStyle : null);
    });
  }

  @override
  Widget build(BuildContext context) {
    // The mapPage widget is now the core of the build method
    return Scaffold(
      appBar: AppBar(
        title: const Text('La Sueñomotora'),
        titleTextStyle: const TextStyle(
          color: Colors.white,
          decorationColor: Colors.yellowAccent,
          fontSize: 20,
        ),
        backgroundColor: Colors.green,
        actions: [
          IconButton(
            tooltip: 'Toggle Dark Mode',
            onPressed: _toggleDarkMode,
            icon: const Icon(Icons.wb_sunny),
          ),
        ],
      ),
      drawer: Drawer(
        child: _lista(),
      ),
      body: ResponsibleLayout(
        ventanaMuyPequena: const VentanaMuyPequena(),
        desktopBody: _buildMap(),
        mobileBody: _buildMap(),
        tabletBody: _buildMap(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _gotoDefault,
        tooltip: 'Mi ubicación',
        backgroundColor: Colors.yellowAccent,
        child: const Icon(Icons.my_location),
      ),
    );
  }

  Widget _buildMap() {
    // IMPORTANT: User must provide their own Google Maps API key in the
    // AndroidManifest.xml and AppDelegate.swift files for this to work.
    return GoogleMap(
      onMapCreated: _onMapCreated,
      initialCameraPosition: _kInitialPosition,
      markers: _markers,
      onLongPress: _onLongPress,
      // Enables zoom gestures, drag, etc. by default
    );
  }

  // --- Drawer Logic (kept from original) ---
  Widget _lista() {
    return FutureBuilder(
      future: menuProvider.cargarData(),
      builder: (BuildContext context, AsyncSnapshot<List<dynamic>> snapshot) {
        if (snapshot.hasData) {
          return ListView(
            children: _listaItems(snapshot.data, context),
          );
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }

  List<Widget> _listaItems(List<dynamic>? data, BuildContext context) {
    final List<Widget> opciones = [];
    opciones.add(
      Container(
        constraints: const BoxConstraints.expand(height: 170),
        child: Image.asset(
          'assets/locomotorafoto.jpg',
          fit: BoxFit.cover,
          repeat: ImageRepeat.repeat,
        ),
      ),
    );
    data?.forEach((opt) {
      final widgetTemp = ListTile(
        title: Text(opt['texto']),
        leading: getIcon(opt['icon']),
        trailing: getIcon('arrow_right'),
        onTap: () {
          Navigator.pushNamed(context, opt['ruta']);
        },
      );

      opciones
        ..add(widgetTemp)
        ..add(const Divider());
    });

    return opciones;
  }
}
