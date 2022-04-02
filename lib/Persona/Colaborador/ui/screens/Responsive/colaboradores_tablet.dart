import 'package:flutter/material.dart';
import 'package:suenomotora_app/Persona/Colaborador/ui/widgets/colaborador_card.dart';
import 'package:suenomotora_app/common/widgets/floating_button.dart';
import 'package:suenomotora_app/common/widgets/forms_dialogs.dart';

class ColaboradoresTablet extends StatelessWidget {
  const ColaboradoresTablet({Key? key}) : super(key: key);

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
            crossAxisCount: 2,
            childAspectRatio: 99 / 42,
            children: [
              ConstrainedBox(
                constraints: const BoxConstraints(
                    maxHeight: 200,
                    minHeight: 100,
                    maxWidth: 100,
                    minWidth: 100),
                child: card.cardColaborador('Hola', 'contenido',
                    btnAction: () => print('hola')),
              ),
              ConstrainedBox(
                constraints: const BoxConstraints(
                    maxHeight: 200,
                    minHeight: 100,
                    maxWidth: 100,
                    minWidth: 100),
                child: card.cardColaborador('Hola', 'contenido',
                    btnAction: () => print('hola')),
              )
            ],
          ),
        ),
        floatingActionButton: floButton.floatingButton(
            btnAction: () =>
                FormsDialogs.mostrarDialogRegistroColaborador(context)));
  }
}
