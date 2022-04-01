import 'package:flutter/material.dart';
import 'package:suenomotora_app/common/widgets/cards.dart';
import 'package:suenomotora_app/common/widgets/floating_button.dart';

class DonantesTablet extends StatelessWidget {
  const DonantesTablet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Cards card = Cards();
    FloatingButton floButton = FloatingButton();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Donantes'),
      ),
      body: Container(
        padding: const EdgeInsets.only(top: 10.0, left: 10.0, right: 10.0),
        child: GridView.count(
          addAutomaticKeepAlives: true,
          crossAxisCount: 3,
          childAspectRatio: 100 / 66,
          children: [
            ConstrainedBox(
              constraints: const BoxConstraints(
                  maxHeight: 200, minHeight: 100, maxWidth: 100, minWidth: 100),
              child: card.cardSencillo('Hola', 'contenido',
                  btnAction: () => print('hola')),
            ),
            ConstrainedBox(
              constraints: const BoxConstraints(
                  maxHeight: 200, minHeight: 100, maxWidth: 100, minWidth: 100),
              child: card.cardSencillo('Hola', 'contenido',
                  btnAction: () => print('hola')),
            ),
            ConstrainedBox(
              constraints: const BoxConstraints(
                  maxHeight: 200, minHeight: 100, maxWidth: 100, minWidth: 100),
              child: card.cardSencillo('Hola', 'contenido',
                  btnAction: () => print('hola')),
            ),
            ConstrainedBox(
              constraints: const BoxConstraints(
                  maxHeight: 200, minHeight: 100, maxWidth: 100, minWidth: 100),
              child: card.cardSencillo('Hola', 'contenido',
                  btnAction: () => print('hola')),
            ),
            ConstrainedBox(
              constraints: const BoxConstraints(
                  maxHeight: 200, minHeight: 100, maxWidth: 100, minWidth: 100),
              child: card.cardSencillo('Hola', 'contenido',
                  btnAction: () => print('hola')),
            ),
            ConstrainedBox(
              constraints: const BoxConstraints(
                  maxHeight: 200, minHeight: 100, maxWidth: 100, minWidth: 100),
              child: card.cardSencillo('Hola', 'contenido',
                  btnAction: () => print('hola')),
            )
          ],
        ),
      ),
      floatingActionButton:
          floButton.floatingButton(btnAction: () => print('hola 6')),
    );
  }
}
