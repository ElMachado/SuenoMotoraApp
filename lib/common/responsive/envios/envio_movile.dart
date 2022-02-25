import 'package:flutter/material.dart';
import 'package:suenomotora_app/common/cards.dart';
import 'package:suenomotora_app/common/floating_button.dart';

class EnviosMovil extends StatelessWidget {
  const EnviosMovil({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Cards card = Cards();

    FloatingButton floButton = FloatingButton();
    return Scaffold(
        appBar: AppBar(
          title: const Text('Envios'),
        ),
        body: Container(
          padding: const EdgeInsets.only(top: 10.0, left: 10.0, right: 10.0),
          child: ListView(
            children: [
              card.CardEnvios(
                  'Jesús Arroyo', 'ing de sistemas- tel 3105124359', '', '', '',
                  btnAction: () => print('hola')),
            ],
          ),
        ),
        floatingActionButton:
            floButton.floatingButton(btnAction: () => print('Hola5')));
  }
}
