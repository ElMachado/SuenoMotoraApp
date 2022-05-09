import 'package:flutter/material.dart';
import 'package:suenomotora_app/Persona/Colaborador/ui/widgets/colaborador_card.dart';
import 'package:suenomotora_app/Persona/Colaborador/ui/widgets/form_diaglog_detalles_colaboradores.dart';
import 'package:suenomotora_app/Persona/Colaborador/ui/widgets/form_dialog_registro_colaboradores.dart';
import 'package:suenomotora_app/common/widgets/floating_button.dart';

class ColaboradoresDesktop extends StatelessWidget {
  const ColaboradoresDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CardColaborador card = const CardColaborador();
    FloatingButton floButton = FloatingButton();
    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.height;
    print(_width);
    int _crossAxisCount = 3;

    return Scaffold(
        appBar: AppBar(
          title: const Text('Colaboradores'),
        ),
        body: Container(
            padding: const EdgeInsets.only(top: 10.0, left: 10.0, right: 10.0),
            child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: _crossAxisCount,
                    mainAxisSpacing: 8,
                    crossAxisSpacing: 8,
                    childAspectRatio: 2.5),
                itemBuilder: (context, index) {
                  return card.cardColaborador('Hola', 'contenido',
                      btnAction: () => FormDialogDetallesColaborador
                          .formDialogDetallesColaborador(context));
                })),
        floatingActionButton: floButton.floatingButton(
            btnAction: () =>
                FormDialogRegistroColaboradores.formDialogRegistroColaboradores(
                    context)));
  }
}
