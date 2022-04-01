// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:suenomotora_app/common/widgets/cards.dart';
import 'package:suenomotora_app/common/widgets/floating_button.dart';

class EquiposDesktop extends StatelessWidget {
  const EquiposDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Cards card = Cards();
    FloatingButton floButton = FloatingButton();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Equipos'),
      ),
      body: Container(
        padding: const EdgeInsets.only(top: 10.0, left: 10.0, right: 10.0),
        child: GridView.count(
          addAutomaticKeepAlives: true,
          crossAxisCount: 4,
          childAspectRatio: (450 / 560),
          children: [
            Container(child: card.cardImage(() => print('hola 3'))),
            Container(child: card.cardImage(() => print('shola 3'))),
            Container(child: card.cardImage(() => print('hola 3'))),
            Container(child: card.cardImage(() => print('hola 3'))),
            Container(child: card.cardImage(() => print('hola 3'))),
            Container(child: card.cardImage(() => print('hola 3'))),
          ],
        ),
      ),
      floatingActionButton:
          floButton.floatingButton(btnAction: () => print('hola')),
    );
  }
}
