import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:suenomotora_app/Persona/Colaborador/ui/widgets/colaborador_card.dart';
import 'package:suenomotora_app/Persona/Colaborador/ui/widgets/form_diaglog_detalles_colaboradores.dart';
import 'package:suenomotora_app/common/widgets/floating_button.dart';

import '../../../../../common/repository/get_data.dart';
import '../../../model/colaborador.dart';
import '../../widgets/form_dialog_registro_colaboradores.dart';

class ColaboradoresMovil extends StatelessWidget {
  const ColaboradoresMovil({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _db = FirebaseFirestore.instance;
    FloatingButton floButton = FloatingButton();
    Colaborador colaborador = Colaborador('', '', '');

    var colaboradorStream = GetData();

    return Scaffold(
        appBar: AppBar(
          title: const Text('Colaboradores'),
        ),
        body: StreamBuilder<List<Colaborador>>(
            stream: colaboradorStream.colaboradorStream(),
            builder: (BuildContext context,
                AsyncSnapshot<List<Colaborador>> snapshot) {
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
                      Colaborador currentColaborador = snapshot.data![index];
                      return FittedBox(
                        fit: BoxFit.fill,
                        child: CardColaborador(
                            currentColaborador.nombre,
                            currentColaborador.apellido,
                            currentColaborador.telefono,
                            () => FormDialogDetallesColaborador
                                .formDialogDetallesColaborador(context)),
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
                FormDialogRegistroColaboradores.formDialogRegistroColaboradores(
                    context)));
  }
}
