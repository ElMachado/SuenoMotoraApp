import 'package:flutter/material.dart';
import 'package:suenomotora_app/common/cards.dart';
import 'package:suenomotora_app/common/floating_button.dart';

class EnviosDesktop extends StatelessWidget {
  const EnviosDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Cards card = Cards();
    FloatingButton floButton = FloatingButton();
    final _size = MediaQuery.of(context).size.width;
    double aspectRatio = 10.0;
    print(_size);

    // _size >= 1590.0 && _size <= 2920
    //     ? aspectRatio = (100 / 52)
    //     : aspectRatio = (100 / 54);
    // _size >= 1525.0 && _size <= 1581.0
    //     ? aspectRatio = (100 / 72)
    //     : aspectRatio = (100 / 52);
    // _size >= 1201.0 && _size <= 1525.0
    //     ? aspectRatio = (100 / 92)
    //     : aspectRatio = (100 / 52);
    print(aspectRatio);
    return Scaffold(
        appBar: AppBar(
          title: const Text('Envios'),
        ),
        body: Container(
          padding: const EdgeInsets.only(top: 10.0, left: 10.0, right: 10.0),
          child: GridView.count(
            addAutomaticKeepAlives: true,
            crossAxisCount: _size < 1361 ? 3 : 4,
            childAspectRatio: 1 / 0.7,
            children: [
              card.cardEnvios('nombreEscuela', 'responsable', 'direccionEnvio',
                  'numeroTelefono', 'contenidoEnvio',
                  btnAction: () => print('hola')),
              card.cardEnvios('nombreEscuela', 'responsable', 'direccionEnvio',
                  'numeroTelefono', 'contenidoEnvio',
                  btnAction: () => print('hola')),
              card.cardEnvios('nombreEscuela', 'responsable', 'direccionEnvio',
                  'numeroTelefono', 'contenidoEnvio',
                  btnAction: () => print('hola')),
              card.cardEnvios('nombreEscuela', 'responsable', 'direccionEnvio',
                  'numeroTelefono', 'contenidoEnvio',
                  btnAction: () => print('hola')),
              card.cardEnvios('nombreEscuela', 'responsable', 'direccionEnvio',
                  'numeroTelefono', 'contenidoEnvio',
                  btnAction: () => print('hola')),
              card.cardEnvios('nombreEscuela', 'responsable', 'direccionEnvio',
                  'numeroTelefono', 'contenidoEnvio',
                  btnAction: () => print('hola')),
              card.cardEnvios('nombreEscuela', 'responsable', 'direccionEnvio',
                  'numeroTelefono', 'contenidoEnvio',
                  btnAction: () => print('hola')),
              card.cardEnvios('nombreEscuela', 'responsable', 'direccionEnvio',
                  'numeroTelefono', 'contenidoEnvio',
                  btnAction: () => print('hola')),
              card.cardEnvios('nombreEscuela', 'responsable', 'direccionEnvio',
                  'numeroTelefono', 'contenidoEnvio',
                  btnAction: () => print('hola')),
              card.cardEnvios('nombreEscuela', 'responsable', 'direccionEnvio',
                  'numeroTelefono', 'contenidoEnvio',
                  btnAction: () => print('hola')),
              card.cardEnvios('nombreEscuela', 'responsable', 'direccionEnvio',
                  'numeroTelefono', 'contenidoEnvio',
                  btnAction: () => print('hola')),
              card.cardEnvios('nombreEscuela', 'responsable', 'direccionEnvio',
                  'numeroTelefono', 'contenidoEnvio',
                  btnAction: () => print('hola')),
              card.cardEnvios('nombreEscuela', 'responsable', 'direccionEnvio',
                  'numeroTelefono', 'contenidoEnvio',
                  btnAction: () => print('hola')),
            ],
          ),
        ),
        floatingActionButton:
            floButton.floatingButton(btnAction: () => print('hola')));
  }
}
