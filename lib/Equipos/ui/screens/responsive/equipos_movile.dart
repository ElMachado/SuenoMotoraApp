// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:suenomotora_app/Equipos/ui/widgets/card_equipos.dart';
import 'package:suenomotora_app/Equipos/ui/widgets/form_dialog_registro_equipos.dart';

import 'package:suenomotora_app/common/widgets/floating_button.dart';

import '../../../../common/repository/get_data.dart';
import '../../../model/equipos.dart';

class EquiposMovile extends StatelessWidget {
  const EquiposMovile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    GetData stream = GetData();
    FloatingButton floButton = FloatingButton();
    CardEquipos card = const CardEquipos('', '', '', '', '');

    return Scaffold(
      appBar: AppBar(
        title: const Text('Equipos'),
      ),
      body: StreamBuilder<List<Equipos>>(
          stream: stream.equipoStream(),
          builder:
              (BuildContext context, AsyncSnapshot<List<Equipos>> snapshot) {
            if (snapshot.hasError) {
              return Text('Error: ${snapshot.error}');
            }
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator());
            } else if (snapshot.hasData) {
              return Container(
                padding:
                    const EdgeInsets.only(top: 10.0, left: 10.0, right: 10.0),
                child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  itemCount: snapshot.data!.toList().length,
                  itemBuilder: (context, index) {
                    Equipos currentColaborador = snapshot.data![index];
                    return CardEquipos(
                      currentColaborador.procesador,
                      currentColaborador.memoriaRAM,
                      currentColaborador.discoDuro,
                      currentColaborador.observaciones,
                      currentColaborador.foto,
                    );
                  },
                ),
              );
            } else {
              return const Center(
                child: Text('Un error a ocurrido'),
              );
            }
          }),
      floatingActionButton: floButton.floatingButton(
          btnAction: () =>
              FormDialogRegistroEquipos.formDialogRegistroEquipos(context)),
    );
  }
}
