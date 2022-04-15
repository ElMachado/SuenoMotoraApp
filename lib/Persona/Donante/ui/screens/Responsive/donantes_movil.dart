import 'package:flutter/material.dart';
import 'package:suenomotora_app/common/widgets/floating_button.dart';

import '../../widgets/donante_card.dart';
import '../../widgets/form_diaglog_detalles_donantes.dart';
import '../../widgets/form_dialog_registro_donante.dart';

class DonatesMovil extends StatelessWidget {
  const DonatesMovil({Key? key}) : super(key: key);

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
          child: ListView(
            children: [
              card.cardDonante(
                  'Jesús Arroyo', 'ing de sistemas- tel 3105124359',
                  btnAction: () =>
                      FormDialogDetallesDonantes.formDialogDetallesDonantes(
                          context)),
            ],
          ),
        ),
        floatingActionButton: floButton.floatingButton(
            btnAction: () =>
                FormDialogRegistroColaborador.formDialogRegistroColaborador(
                    context)));
  }
}
