import 'package:flutter/material.dart';
import 'package:suenomotora_app/Solicitudes/ui/widgets/form_dialog_registro_solicitudes_escuelas.dart';
import 'package:suenomotora_app/Solicitudes/ui/widgets/forms_dialog_detalle_solicitudes_escuelas.dart';
import 'package:suenomotora_app/common/widgets/floating_button.dart';

import '../../widgets/card_solicitudes_escuelas.dart';

class SolicitudesEscuelasDesktop extends StatelessWidget {
  const SolicitudesEscuelasDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CardSolicitudesEscuelas card = CardSolicitudesEscuelas();
    final _size = MediaQuery.of(context).size.width;
    double _aspectRateo = _size / 1300;
    _buildFormDetalles(context) {
      return showDialog(
          context: context,
          builder: (context) {
            return const FormDialogDetalleSolicitudEscuela().build(context);
          });
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
            card.cardSolicitudesEscuelas(
                'Hola', 'contenido', 'contenido 2', 'contenido 3',
                btnAction: () => _buildFormDetalles(context)),
            card.cardSolicitudesEscuelas(
                'Hola', 'contenido', 'contenido 2', 'contenido 3',
                btnAction: () => _buildFormDetalles(context)),
            card.cardSolicitudesEscuelas(
                'Hola', 'contenido', 'contenido 2', 'contenido 3',
                btnAction: () => _buildFormDetalles(context)),
            card.cardSolicitudesEscuelas(
                'Hola', 'contenido', 'contenido 2', 'contenido 3',
                btnAction: () => _buildFormDetalles(context)),
            card.cardSolicitudesEscuelas(
                'Hola', 'contenido', 'contenido 2', 'contenido 3',
                btnAction: () => _buildFormDetalles(context)),
            card.cardSolicitudesEscuelas(
                'Hola', 'contenido', 'contenido 2', 'contenido 3',
                btnAction: () => _buildFormDetalles(context)),
            card.cardSolicitudesEscuelas(
                'Hola', 'contenido', 'contenido 2', 'contenido 3',
                btnAction: () => _buildFormDetalles(context)),
            card.cardSolicitudesEscuelas(
                'Hola', 'contenido', 'contenido 2', 'contenido 3',
                btnAction: () => _buildFormDetalles(context)),
          ],
        ),
      ),
      floatingActionButton: floButton.floatingButton(
          btnAction: () => FormDialogRegistroSolicitudEscuela
              .formDialogRegistroSolicitudEscuela(context)),
    );
  }
}
