import 'package:flutter/material.dart';
import 'package:suenomotora_app/common/cards.dart';
import 'package:suenomotora_app/common/floating_button.dart';

class EnviosPage extends StatefulWidget {
  const EnviosPage({Key? key}) : super(key: key);

  @override
  State<EnviosPage> createState() => _EnviosPage();
}

class _EnviosPage extends State<EnviosPage> {
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
            card.CardEnvios('IE Nuevos Horizontes', 'Mario Pérez ', '310000000',
                'calle 32A#43-44', '1 caja de libros, 1 computador',
                btnAction: () => print('hola 3'))
          ],
        ),
      ),
      floatingActionButton:
          floButton.floatingButton(btnAction: () => print('hola 2')),
    );
  }
}
