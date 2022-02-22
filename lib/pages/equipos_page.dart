import 'package:flutter/material.dart';
import 'package:suenomotora_app/common/cards.dart';
import 'package:suenomotora_app/common/floating_button.dart';

class EquiposPage extends StatefulWidget {
  const EquiposPage({Key? key}) : super(key: key);

  @override
  State<EquiposPage> createState() => _EquiposPage();
}

class _EquiposPage extends State<EquiposPage> {
  Cards card = Cards();
  FloatingButton floButton = FloatingButton();
  @override
  Widget build(BuildContext context) {
    final orientacion = MediaQuery.of(context).orientation;
    final _size = MediaQuery.of(context).size.width;
    print(_size);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Equipos'),
      ),
      body: card.responsiveEquiposCard(_size),
      floatingActionButton:
          floButton.floatingButton(btnAction: () => print('hola 2')),
    );
  }
}
