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
    print(_width);
    int crossAxisCount = 4;

    if (_width > 1323) {
      crossAxisCount = 4;
    } else {
      crossAxisCount = 3;
    }
    GetData stream = GetData();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Equipos'),
      ),
      body: Container(
        padding: const EdgeInsets.only(top: 10.0, left: 10.0, right: 10.0),
        child: StreamBuilder<List<Equipos>>(
          stream: stream.equipoStream(),
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
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: crossAxisCount,
                      mainAxisSpacing: 1,
                      crossAxisSpacing: 1,
                      childAspectRatio: 1007 * 0.9 / 1920),
                  itemBuilder: (context, index) {
                    Equipos currentColaborador = snapshot.data![index];
                    return FittedBox(
                      fit: BoxFit.fill,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: CardEquipos(
                            currentColaborador.procesador,
                            currentColaborador.memoriaRAM,
                            currentColaborador.discoDuro,
                            currentColaborador.observaciones,
                            currentColaborador.foto),
                      ),
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
