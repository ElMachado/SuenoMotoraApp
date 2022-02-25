import 'package:flutter/material.dart';
import 'package:suenomotora_app/common/cards.dart';
import 'package:suenomotora_app/common/floating_button.dart';

class EnviosTablet extends StatelessWidget {
  const EnviosTablet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Cards card = Cards();
    FloatingButton floButton = FloatingButton();
    final _size = MediaQuery.of(context).size.width;
    double aspectRatio = 1.0;
    print(_size);

    _size <= 840.0 ? aspectRatio = (1 / 0.90) : aspectRatio = (100 / 44);
    _size >= 942.0 && _size <= 1581.0
        ? aspectRatio = (100 / 72)
        : aspectRatio = (100 / 52);
    _size >= 608.0 && _size <= 1525.0
        ? aspectRatio = (100 / 92)
        : aspectRatio = (100 / 52);
    print(aspectRatio);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Envios'),
      ),
      body: Container(
        padding: const EdgeInsets.only(top: 10.0, left: 10.0, right: 10.0),
        child: GridView.count(
          addAutomaticKeepAlives: true,
          crossAxisCount: 2,
          childAspectRatio: aspectRatio,
          children: [
            card.CardEnvios('nombreEscuela', 'responsable', 'direccionEnvio',
                'numeroTelefono', 'contenidoEnvio',
                btnAction: () => print('hola')),
            card.CardEnvios('nombreEscuela', 'responsable', 'direccionEnvio',
                'numeroTelefono', 'contenidoEnvio',
                btnAction: () => print('hola')),
            card.CardEnvios('nombreEscuela', 'responsable', 'direccionEnvio',
                'numeroTelefono', 'contenidoEnvio',
                btnAction: () => print('hola')),
            card.CardEnvios('nombreEscuela', 'responsable', 'direccionEnvio',
                'numeroTelefono', 'contenidoEnvio',
                btnAction: () => print('hola')),
            card.CardEnvios('nombreEscuela', 'responsable', 'direccionEnvio',
                'numeroTelefono', 'contenidoEnvio',
                btnAction: () => print('hola')),
            card.CardEnvios('nombreEscuela', 'responsable', 'direccionEnvio',
                'numeroTelefono', 'contenidoEnvio',
                btnAction: () => print('hola')),
            card.CardEnvios('nombreEscuela', 'responsable', 'direccionEnvio',
                'numeroTelefono', 'contenidoEnvio',
                btnAction: () => print('hola')),
            card.CardEnvios('nombreEscuela', 'responsable', 'direccionEnvio',
                'numeroTelefono', 'contenidoEnvio',
                btnAction: () => print('hola')),
            card.CardEnvios('nombreEscuela', 'responsable', 'direccionEnvio',
                'numeroTelefono', 'contenidoEnvio',
                btnAction: () => print('hola'))
          ],
        ),
      ),
      floatingActionButton:
          floButton.floatingButton(btnAction: () => print('hola 6')),
    );
  }
}
