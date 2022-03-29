// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:suenomotora_app/common/cards.dart';
import 'package:suenomotora_app/common/floating_button.dart';

class EquiposMovile extends StatelessWidget {
  const EquiposMovile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    FloatingButton floButoon = FloatingButton();
    Cards card = Cards();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Equipos'),
      ),
      body: Container(
        padding: const EdgeInsets.only(top: 10.0, left: 10.0, right: 10.0),
        child: ListView(
          children: [
            card.cardImage(() => print('hola')),
          ],
        ),
      ),
      floatingActionButton:
          floButoon.floatingButton(btnAction: () => print('hola')),
    );
  }
}
