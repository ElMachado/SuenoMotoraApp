import 'package:flutter/material.dart';
import 'package:suenomotora_app/Solicitudes/ui/widgets/form_dialog_registro_solicitudes_escuelas.dart';
import 'package:suenomotora_app/Solicitudes/ui/widgets/forms_dialog_detalle_solicitudes_escuelas.dart';
import 'package:suenomotora_app/common/widgets/floating_button.dart';
import '../../widgets/card_solicitudes_escuelas.dart';

class SolicitudesEscuelasMovil extends StatelessWidget {
  const SolicitudesEscuelasMovil({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CardSolicitudesEscuelas card = CardSolicitudesEscuelas();
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
        child: ListView(
          children: [
            card.cardSolicitudesEscuelas('Jesús Arroyo',
                'ing de sistemas- tel 3105124359', 'texto 3', 'texto 4',
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
