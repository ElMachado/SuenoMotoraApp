// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:suenomotora_app/Equipos/model/equipos.dart';
import 'package:suenomotora_app/Equipos/ui/widgets/card_equipos.dart';
import 'package:suenomotora_app/Equipos/ui/widgets/form_dialog_registro_equipos.dart';
import 'package:suenomotora_app/common/repository/get_data.dart';

import 'package:suenomotora_app/common/widgets/floating_button.dart';

class EquiposDesktop extends StatelessWidget {
  const EquiposDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    FloatingButton floButton = FloatingButton();
    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.height;
    print(_width);
    int crossAxisCount = 3;

    (_width > 1323) ? crossAxisCount = 4 : crossAxisCount = 3;
    GetData stream = GetData();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Equipos'),
      ),
      body: Container(
        padding: const EdgeInsets.only(top: 10.0, left: 10.0, right: 10.0),
        child: StreamBuilder<List<Equipos>>(
          stream: stream.EquipoStream(),
          builder:
              (BuildContext context, AsyncSnapshot<List<Equipos>> snapshot) {
            if (snapshot.hasError) {
              return Text('Error: ${snapshot.error}');
            }
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator());
            } else if (snapshot.hasData) {
              return GridView.builder(
                  itemCount: snapshot.data!.toList().length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4,
                      mainAxisSpacing: 8,
                      crossAxisSpacing: 8,
                      childAspectRatio: 1007 * 1.4 / 1920),
                  itemBuilder: (context, index) {
                    Equipos currentColaborador = snapshot.data![index];
                    return FittedBox(
                      fit: BoxFit.fill,
                      child: CardEquipos(
                          currentColaborador.procesador,
                          currentColaborador.memoriaRAM,
                          currentColaborador.discoDuro,
                          currentColaborador.observaciones,
                          currentColaborador.foto),
                    );
                  });
            } else {
              return const Center(
                child: Text('Un error a ocurrido'),
              );
            }
          },
        ),
      ),
      floatingActionButton: floButton.floatingButton(
          btnAction: () =>
              FormDialogRegistroEquipos.formDialogRegistroEquipos(context)),
    );
  }
}
