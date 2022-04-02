import 'package:flutter/material.dart';
import 'package:suenomotora_app/common/widgets/floating_button.dart';

import '../../widgets/card_solicitudes_escuelas.dart';

class SolicitudesEscuelasDesktop extends StatelessWidget {
  const SolicitudesEscuelasDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CardSolicitudesEscuelas card = CardSolicitudesEscuelas();
    final _size = MediaQuery.of(context).size.width;
    print(_size);

    double _aspectRateo = 0.0;

    // if (_size <= 1920 && 1407 < _size) {
    //   _aspectRateo = (100 / 12);
    // } else {
    //   _aspectRateo = (100 / 12);
    // }

    if (_size <= 1407) {
      _aspectRateo = (100 / 62);
    } else {
      _aspectRateo = (100 / 52);
    }
    if (_size <= 1260) {
      _aspectRateo = (100 / 72);
    } else {
      _aspectRateo = (100 / 62);
    }

    FloatingButton floButton = FloatingButton();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Solicitudes de Escuelas'),
      ),
      body: Container(
        padding: const EdgeInsets.only(top: 10.0, left: 10.0, right: 10.0),
        child: GridView.count(
          addAutomaticKeepAlives: true,
          crossAxisCount: 4,
          childAspectRatio: _aspectRateo,
          children: [
            ConstrainedBox(
              constraints: const BoxConstraints(
                  maxHeight: 200, minHeight: 100, maxWidth: 100, minWidth: 100),
              child: card.cardSolicitudesEscuelas(
                  'Hola', 'contenido', 'contenido 2', 'contenido 3',
                  btnAction: () => print('hola')),
            ),
            ConstrainedBox(
              constraints: const BoxConstraints(
                  maxHeight: 200, minHeight: 100, maxWidth: 100, minWidth: 100),
              child: card.cardSolicitudesEscuelas(
                  'Hola', 'contenido', 'contenido 2', 'contenido 3',
                  btnAction: () => print('hola')),
            ),
            ConstrainedBox(
              constraints: const BoxConstraints(
                  maxHeight: 200, minHeight: 100, maxWidth: 100, minWidth: 100),
              child: card.cardSolicitudesEscuelas(
                  'Hola', 'contenido', 'contenido 2', 'contenido 3',
                  btnAction: () => print('hola')),
            ),
            ConstrainedBox(
              constraints: const BoxConstraints(
                  maxHeight: 200, minHeight: 100, maxWidth: 100, minWidth: 100),
              child: card.cardSolicitudesEscuelas(
                  'Hola', 'contenido', 'contenido 2', 'contenido 3',
                  btnAction: () => print('hola')),
            ),
            ConstrainedBox(
              constraints: const BoxConstraints(
                  maxHeight: 200, minHeight: 100, maxWidth: 100, minWidth: 100),
              child: card.cardSolicitudesEscuelas(
                  'Hola', 'contenido', 'contenido 2', 'contenido 3',
                  btnAction: () => print('hola')),
            ),
            ConstrainedBox(
              constraints: const BoxConstraints(
                  maxHeight: 200, minHeight: 100, maxWidth: 100, minWidth: 100),
              child: card.cardSolicitudesEscuelas(
                  'Hola', 'contenido', 'contenido 2', 'contenido 3',
                  btnAction: () => print('hola')),
            ),
            ConstrainedBox(
              constraints: const BoxConstraints(
                  maxHeight: 200, minHeight: 100, maxWidth: 100, minWidth: 100),
              child: card.cardSolicitudesEscuelas(
                  'Hola', 'contenido', 'contenido 2', 'contenido 3',
                  btnAction: () => print('hola')),
            ),
            ConstrainedBox(
              constraints: const BoxConstraints(
                  maxHeight: 200, minHeight: 100, maxWidth: 100, minWidth: 100),
              child: card.cardSolicitudesEscuelas(
                  'Hola', 'contenido', 'contenido 2', 'contenido 3',
                  btnAction: () => print('hola')),
            ),
          ],
        ),
      ),
      floatingActionButton:
          floButton.floatingButton(btnAction: () => print('hola')),
    );
  }
}
