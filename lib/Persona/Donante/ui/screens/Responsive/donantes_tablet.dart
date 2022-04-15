import 'package:flutter/material.dart';
import 'package:suenomotora_app/Persona/Donante/ui/widgets/donante_card.dart';
import 'package:suenomotora_app/common/widgets/floating_button.dart';

import '../../widgets/form_diaglog_detalles_donantes.dart';
import '../../widgets/form_dialog_registro_donante.dart';

class DonantesTablet extends StatelessWidget {
  const DonantesTablet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CardDonante card = const CardDonante();
    FloatingButton floButton = FloatingButton();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Donantes'),
      ),
      body: Container(
        padding: const EdgeInsets.only(top: 10.0, left: 10.0, right: 10.0),
        child: GridView.count(
          addAutomaticKeepAlives: true,
          crossAxisCount: 3,
          childAspectRatio: 100 / 66,
          children: [
            ConstrainedBox(
              constraints: const BoxConstraints(
                  maxHeight: 200, minHeight: 100, maxWidth: 100, minWidth: 100),
              child: card.cardDonante('Hola', 'contenido',
                  btnAction: () =>
                      FormDialogDetallesDonantes.formDialogDetallesDonantes(
                          context)),
            ),
            ConstrainedBox(
              constraints: const BoxConstraints(
                  maxHeight: 200, minHeight: 100, maxWidth: 100, minWidth: 100),
              child: card.cardDonante('Hola', 'contenido',
                  btnAction: () =>
                      FormDialogDetallesDonantes.formDialogDetallesDonantes(
                          context)),
            ),
            ConstrainedBox(
              constraints: const BoxConstraints(
                  maxHeight: 200, minHeight: 100, maxWidth: 100, minWidth: 100),
              child: card.cardDonante('Hola', 'contenido',
                  btnAction: () =>
                      FormDialogDetallesDonantes.formDialogDetallesDonantes(
                          context)),
            ),
            ConstrainedBox(
              constraints: const BoxConstraints(
                  maxHeight: 200, minHeight: 100, maxWidth: 100, minWidth: 100),
              child: card.cardDonante('Hola', 'contenido',
                  btnAction: () =>
                      FormDialogDetallesDonantes.formDialogDetallesDonantes(
                          context)),
            ),
            ConstrainedBox(
              constraints: const BoxConstraints(
                  maxHeight: 200, minHeight: 100, maxWidth: 100, minWidth: 100),
              child: card.cardDonante('Hola', 'contenido',
                  btnAction: () =>
                      FormDialogDetallesDonantes.formDialogDetallesDonantes(
                          context)),
            ),
            ConstrainedBox(
              constraints: const BoxConstraints(
                  maxHeight: 200, minHeight: 100, maxWidth: 100, minWidth: 100),
              child: card.cardDonante('Hola', 'contenido',
                  btnAction: () =>
                      FormDialogDetallesDonantes.formDialogDetallesDonantes(
                          context)),
            )
          ],
        ),
      ),
      floatingActionButton: floButton.floatingButton(
          btnAction: () =>
              FormDialogRegistroColaborador.formDialogRegistroColaborador(
                  context)),
    );
  }
}
