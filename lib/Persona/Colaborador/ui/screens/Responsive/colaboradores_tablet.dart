import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:suenomotora_app/Persona/Colaborador/model/colaborador.dart';
import 'package:suenomotora_app/Persona/Colaborador/ui/widgets/colaborador_card.dart';
import 'package:suenomotora_app/Persona/Colaborador/ui/widgets/form_diaglog_detalles_colaboradores.dart';
import 'package:suenomotora_app/common/widgets/floating_button.dart';

import '../../../../../common/repository/get_data.dart';
import '../../widgets/form_dialog_registro_colaboradores.dart';

class ColaboradoresTablet extends StatelessWidget {
  const ColaboradoresTablet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _db = FirebaseFirestore.instance;
    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.height;
    Colaborador colaborador = Colaborador('', '', '');

    print(_width);
    print(_height);

    FloatingButton floButton = FloatingButton();
    FormDialogRegistroColaboradores formDialogRegistroColaboradores =
        const FormDialogRegistroColaboradores();
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
              int _crossAxisCount = 0;

              if (_width < 800) {
                _crossAxisCount = 1;
              } else {
                _crossAxisCount = 2;
              }
              return GridView.builder(
                  itemCount: snapshot.data!.toList().length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: _crossAxisCount,
                      mainAxisSpacing: 8,
                      crossAxisSpacing: 8,
                      childAspectRatio: 1007 * 3.0 / 1920),
                  itemBuilder: (context, index) {
                    Colaborador currentColaborador = snapshot.data![index];
                    return CardColaborador(
                        currentColaborador.nombre,
                        currentColaborador.apellido,
                        currentColaborador.telefono,
                        () => FormDialogDetallesColaborador
                            .formDialogDetallesColaborador(context));
                  });
            } else {
              return const Center(
                child: Text('Un error a ocurrido'),
              );
            }
          },
        ),
        floatingActionButton: floButton.floatingButton(
            btnAction: () => formDialogRegistroColaboradores));
  }
}
