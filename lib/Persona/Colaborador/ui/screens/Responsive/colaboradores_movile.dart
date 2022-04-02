import 'package:flutter/material.dart';
import 'package:suenomotora_app/Persona/Colaborador/ui/widgets/colaborador_card.dart';
import 'package:suenomotora_app/common/widgets/floating_button.dart';
import 'package:suenomotora_app/common/widgets/forms_dialogs.dart';

class ColaboradoresMovil extends StatelessWidget {
  const ColaboradoresMovil({Key? key}) : super(key: key);

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
          child: ListView(
            children: [
              card.cardColaborador(
                  'Jesús Arroyo', 'ing de sistemas- tel 3105124359',
                  btnAction: () => print('hola')),
            ],
          ),
        ),
        floatingActionButton: floButton.floatingButton(
            btnAction: () =>
                FormsDialogs.mostrarDialogRegistroColaborador(context)));
  }
}
