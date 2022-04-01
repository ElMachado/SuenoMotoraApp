import 'package:flutter/material.dart';
import 'package:suenomotora_app/common/widgets/cards.dart';
import 'package:suenomotora_app/common/widgets/floating_button.dart';

class SolicitudesEscuelasMovil extends StatelessWidget {
  const SolicitudesEscuelasMovil({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Cards card = Cards();

    FloatingButton floButton = FloatingButton();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Solicitudes de Escuelas'),
      ),
      body: Container(
        padding: const EdgeInsets.only(top: 10.0, left: 10.0, right: 10.0),
        child: ListView(
          children: [
            card.cardSolicitudesEscuelas('Jesús Arroyo',
                'ing de sistemas- tel 3105124359', 'texto 3', 'texto 4',
                btnAction: () => print('hola')),
          ],
        ),
      ),
      floatingActionButton:
          floButton.floatingButton(btnAction: () => print('hola')),
    );
  }
}
