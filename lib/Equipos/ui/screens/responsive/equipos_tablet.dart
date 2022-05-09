// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:suenomotora_app/Equipos/ui/widgets/card_equipos.dart';

import 'package:suenomotora_app/common/widgets/floating_button.dart';

import '../../widgets/form_dialog_registro_equipos.dart';

class EquiposTablet extends StatelessWidget {
  const EquiposTablet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CardEquipos card = const CardEquipos();
    FloatingButton floButton = FloatingButton();
    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.height;
    print(_width);

    int crossAxisCount = 2;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Equipos'),
      ),
      body: Container(
        padding: const EdgeInsets.only(top: 10.0, left: 10.0, right: 10.0),
        child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: crossAxisCount,
                mainAxisSpacing: 8,
                crossAxisSpacing: 8,
                childAspectRatio: 0.75),
            addAutomaticKeepAlives: true,
            itemBuilder: (context, index) {
              return Container(
                  constraints: BoxConstraints(
                    maxHeight: _height * 0.3,
                  ),
                  child: card.build(context));
            }),
      ),
      floatingActionButton: floButton.floatingButton(
          btnAction: () =>
              FormDialogRegistroEquipos.formDialogRegistroEquipos(context)),
    );
  }
}
