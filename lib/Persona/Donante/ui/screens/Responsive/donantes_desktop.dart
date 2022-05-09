import 'package:flutter/material.dart';
import 'package:suenomotora_app/Persona/Donante/ui/widgets/donante_card.dart';
import 'package:suenomotora_app/Persona/Donante/ui/widgets/form_diaglog_detalles_donantes.dart';
import 'package:suenomotora_app/common/widgets/floating_button.dart';

import '../../widgets/form_dialog_registro_donante.dart';

class DonatesDesktop extends StatelessWidget {
  const DonatesDesktop({Key? key}) : super(key: key);

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
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisSpacing: 8,
                crossAxisSpacing: 8,
                childAspectRatio: 2.5),
            itemBuilder: (context, index) {
              return card.cardDonante('Hola', 'contenido',
                  btnAction: () =>
                      FormDialogDetallesDonantes.formDialogDetallesDonantes(
                          context));
            },
          ),
        ),
        floatingActionButton: floButton.floatingButton(
            btnAction: () =>
                FormDialogRegistroColaborador.formDialogRegistroColaborador(
                    context)));
  }
}
