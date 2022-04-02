import 'package:flutter/material.dart';
import 'package:suenomotora_app/Solicitudes/ui/widgets/forms_dialog_registro_solicitudes_escuelas.dart';
import 'package:suenomotora_app/common/widgets/floating_button.dart';

import '../../widgets/card_solicitudes_escuelas.dart';

class SolicitudesEscuelasTablet extends StatelessWidget {
  const SolicitudesEscuelasTablet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CardSolicitudesEscuelas card = CardSolicitudesEscuelas();
    final _size = MediaQuery.of(context).size.width;
    print(_size);
    double aspectRateo = 0.0;
    if (_size < 953) {
      aspectRateo = (100 / 40);
    } else {
      aspectRateo = (100 / 40);
    }
    if (_size < 736) {
      aspectRateo = (100 / 70);
    } else {
      (aspectRateo = 100 / 58);
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
          crossAxisCount: 2,
          childAspectRatio: aspectRateo,
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
      floatingActionButton: floButton.floatingButton(
          btnAction: () => FormDialogRegistroSolicitudEscuela
              .formDialogRegistroSolicitudEscuela(context)),
    );
  }
}
