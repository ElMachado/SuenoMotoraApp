import 'package:flutter/material.dart';
import 'package:suenomotora_app/common/widgets/floating_button.dart';

import '../../widgets/donante_card.dart';

class DonatesMovil extends StatelessWidget {
  const DonatesMovil({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CardDonante card = CardDonante();

    FloatingButton floButton = FloatingButton();
    return Scaffold(
        appBar: AppBar(
          title: const Text('Donantes'),
        ),
        body: Container(
          padding: const EdgeInsets.only(top: 10.0, left: 10.0, right: 10.0),
          child: ListView(
            children: [
              card.cardDonante(
                  'Jesús Arroyo', 'ing de sistemas- tel 3105124359',
                  btnAction: () => print('hola')),
            ],
          ),
        ),
        floatingActionButton:
            floButton.floatingButton(btnAction: () => print('Hola')));
  }
}
