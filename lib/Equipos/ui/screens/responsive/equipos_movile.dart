// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:suenomotora_app/Equipos/ui/widgets/card_equipos.dart';
import 'package:suenomotora_app/Equipos/ui/widgets/form_dialog_registro_equipos.dart';

import 'package:suenomotora_app/common/widgets/floating_button.dart';

class EquiposMovile extends StatelessWidget {
  const EquiposMovile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    FloatingButton floButton = FloatingButton();
    CardEquipos card = const CardEquipos();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Equipos'),
      ),
      body: Container(
        height: 800,
        padding: const EdgeInsets.only(top: 10.0, left: 10.0, right: 10.0),
        child: ListView(
          children: [card.build(context)],
        ),
      ),
      floatingActionButton: floButton.floatingButton(
          btnAction: () =>
              FormDialogRegistroEquipos.formDialogRegistroEquipos(context)),
    );
  }
}
