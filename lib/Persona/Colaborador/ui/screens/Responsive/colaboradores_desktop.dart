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

    return Scaffold(
        appBar: AppBar(
          title: const Text('Colaboradores'),
        ),
        body: Container(
          padding: const EdgeInsets.only(top: 10.0, left: 10.0, right: 10.0),
          child: GridView.count(
            addAutomaticKeepAlives: true,
            crossAxisCount: 4,
            childAspectRatio: 99 / 42,
            children: [
              card.cardColaborador('Hola', 'contenido',
                  btnAction: () => FormDialogDetallesColaborador
                      .formDialogDetallesColaborador(context)),
              ConstrainedBox(
                constraints: const BoxConstraints(
                    maxHeight: 200,
                    minHeight: 100,
                    maxWidth: 100,
                    minWidth: 100),
                child: card.cardColaborador('Hola', 'contenido',
                    btnAction: () => FormDialogDetallesColaborador
                        .formDialogDetallesColaborador(context)),
              ),
              ConstrainedBox(
                constraints: const BoxConstraints(
                    maxHeight: 200,
                    minHeight: 100,
                    maxWidth: 100,
                    minWidth: 100),
                child: card.cardColaborador('Hola', 'contenido',
                    btnAction: () => FormDialogDetallesColaborador
                        .formDialogDetallesColaborador(context)),
              ),
              ConstrainedBox(
                constraints: const BoxConstraints(
                    maxHeight: 200,
                    minHeight: 100,
                    maxWidth: 100,
                    minWidth: 100),
                child: card.cardColaborador('Hola', 'contenido',
                    btnAction: () => FormDialogDetallesColaborador
                        .formDialogDetallesColaborador(context)),
              ),
              ConstrainedBox(
                constraints: const BoxConstraints(
                    maxHeight: 200,
                    minHeight: 100,
                    maxWidth: 100,
                    minWidth: 100),
                child: card.cardColaborador('Hola', 'contenido',
                    btnAction: () => FormDialogDetallesColaborador
                        .formDialogDetallesColaborador(context)),
              ),
              ConstrainedBox(
                constraints: const BoxConstraints(
                    maxHeight: 200,
                    minHeight: 100,
                    maxWidth: 100,
                    minWidth: 100),
                child: card.cardColaborador('Hola', 'contenido',
                    btnAction: () => FormDialogDetallesColaborador
                        .formDialogDetallesColaborador(context)),
              ),
              ConstrainedBox(
                constraints: const BoxConstraints(
                    maxHeight: 200,
                    minHeight: 100,
                    maxWidth: 100,
                    minWidth: 100),
                child: card.cardColaborador('Hola', 'contenido',
                    btnAction: () => FormDialogDetallesColaborador
                        .formDialogDetallesColaborador(context)),
              ),
              ConstrainedBox(
                constraints: const BoxConstraints(
                    maxHeight: 200,
                    minHeight: 100,
                    maxWidth: 100,
                    minWidth: 100),
                child: card.cardColaborador('Hola', 'contenido',
                    btnAction: () => FormDialogDetallesColaborador
                        .formDialogDetallesColaborador(context)),
              ),
              ConstrainedBox(
                constraints: const BoxConstraints(
                    maxHeight: 200,
                    minHeight: 100,
                    maxWidth: 100,
                    minWidth: 100),
                child: card.cardColaborador('Hola', 'contenido',
                    btnAction: () => FormDialogDetallesColaborador
                        .formDialogDetallesColaborador(context)),
              ),
              ConstrainedBox(
                constraints: const BoxConstraints(
                    maxHeight: 200,
                    minHeight: 100,
                    maxWidth: 100,
                    minWidth: 100),
                child: card.cardColaborador('Hola', 'contenido',
                    btnAction: () => FormDialogDetallesColaborador
                        .formDialogDetallesColaborador(context)),
              )
            ],
          ),
        ),
        floatingActionButton: floButton.floatingButton(
            btnAction: () =>
                FormDialogRegistroColaboradores.formDialogRegistroColaboradores(context)));
  }
}
