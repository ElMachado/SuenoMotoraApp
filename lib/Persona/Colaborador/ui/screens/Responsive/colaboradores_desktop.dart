import 'package:flutter/material.dart';
import 'package:suenomotora_app/common/cards.dart';
import 'package:suenomotora_app/common/floating_button.dart';
import 'package:suenomotora_app/common/forms_dialogs.dart';

class ColaboradoresDesktop extends StatelessWidget {
  const ColaboradoresDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Cards card = Cards();
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
              card.cardSencillo('Hola', 'contenido',
                  btnAction: () => print('hola')),
              ConstrainedBox(
                constraints: const BoxConstraints(
                    maxHeight: 200,
                    minHeight: 100,
                    maxWidth: 100,
                    minWidth: 100),
                child: card.cardSencillo('Hola', 'contenido',
                    btnAction: () => print('hola')),
              ),
              ConstrainedBox(
                constraints: const BoxConstraints(
                    maxHeight: 200,
                    minHeight: 100,
                    maxWidth: 100,
                    minWidth: 100),
                child: card.cardSencillo('Hola', 'contenido',
                    btnAction: () => print('hola')),
              ),
              ConstrainedBox(
                constraints: const BoxConstraints(
                    maxHeight: 200,
                    minHeight: 100,
                    maxWidth: 100,
                    minWidth: 100),
                child: card.cardSencillo('Hola', 'contenido',
                    btnAction: () => print('hola')),
              ),
              ConstrainedBox(
                constraints: const BoxConstraints(
                    maxHeight: 200,
                    minHeight: 100,
                    maxWidth: 100,
                    minWidth: 100),
                child: card.cardSencillo('Hola', 'contenido',
                    btnAction: () => print('hola')),
              ),
              ConstrainedBox(
                constraints: const BoxConstraints(
                    maxHeight: 200,
                    minHeight: 100,
                    maxWidth: 100,
                    minWidth: 100),
                child: card.cardSencillo('Hola', 'contenido',
                    btnAction: () => print('hola')),
              ),
              ConstrainedBox(
                constraints: const BoxConstraints(
                    maxHeight: 200,
                    minHeight: 100,
                    maxWidth: 100,
                    minWidth: 100),
                child: card.cardSencillo('Hola', 'contenido',
                    btnAction: () => print('hola')),
              ),
              ConstrainedBox(
                constraints: const BoxConstraints(
                    maxHeight: 200,
                    minHeight: 100,
                    maxWidth: 100,
                    minWidth: 100),
                child: card.cardSencillo('Hola', 'contenido',
                    btnAction: () => print('hola')),
              ),
              ConstrainedBox(
                constraints: const BoxConstraints(
                    maxHeight: 200,
                    minHeight: 100,
                    maxWidth: 100,
                    minWidth: 100),
                child: card.cardSencillo('Hola', 'contenido',
                    btnAction: () => print('hola')),
              ),
              ConstrainedBox(
                constraints: const BoxConstraints(
                    maxHeight: 200,
                    minHeight: 100,
                    maxWidth: 100,
                    minWidth: 100),
                child: card.cardSencillo('Hola', 'contenido',
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
