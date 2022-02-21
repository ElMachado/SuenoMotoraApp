import 'package:flutter/material.dart';
import 'package:suenomotora_app/common/cards.dart';
import 'package:suenomotora_app/common/floating_button.dart';

class SolicitudesDeEscuelas extends StatefulWidget {
  const SolicitudesDeEscuelas({Key? key}) : super(key: key);

  @override
  State<SolicitudesDeEscuelas> createState() => _SolicitudesDeEscuelas();
}

class _SolicitudesDeEscuelas extends State<SolicitudesDeEscuelas> {
  Cards card = Cards();
  FloatingButton floButton = FloatingButton();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Solicitudes de Escuelas'),
      ),
      body: Container(
        padding: const EdgeInsets.only(top: 10.0, left: 10.0, right: 10.0),
        child: ListView(
          children: [
            card.cardSolicitudesEscuelas(
                'IE Nuevos Horizontes', 'Mario Pérez ', 'libros', '310000000',
                btnAction: () => print('hola 3'))
          ],
        ),
      ),
      floatingActionButton:
          floButton.floatingButton(btnAction: () => print('hola 2')),
    );
  }
}
