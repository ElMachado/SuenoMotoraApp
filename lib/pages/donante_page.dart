import 'package:flutter/material.dart';
import 'package:suenomotora_app/common/cards.dart';
import 'package:suenomotora_app/common/floating_button.dart';

class DonantesPage extends StatefulWidget {
  const DonantesPage({Key? key}) : super(key: key);

  @override
  State<DonantesPage> createState() => _DonantesPage();
}

class _DonantesPage extends State<DonantesPage> {
  Cards card = Cards();
  FloatingButton floButton = FloatingButton();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Donantes'),
      ),
      body: Container(
        padding: const EdgeInsets.only(top: 10.0, left: 10.0, right: 10.0),
        child: ListView(
          children: [
            card.cardSencillo('Juan Pretel ', 'tel 3105124359',
                btnAction: () => print('hola')),
          ],
        ),
      ),
      floatingActionButton:
          floButton.floatingButton(btnAction: () => print('hola 2')),
    );
  }
}
