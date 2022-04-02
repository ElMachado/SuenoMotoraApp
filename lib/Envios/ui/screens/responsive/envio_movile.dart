import 'package:flutter/material.dart';
import 'package:suenomotora_app/Envios/model/Envio.dart';
import 'package:suenomotora_app/Envios/ui/widgets/card_envio.dart';
import 'package:suenomotora_app/Envios/ui/widgets/form_dialog_crear_registro_envio.dart';
import 'package:suenomotora_app/common/widgets/floating_button.dart';

class EnviosMovil extends StatelessWidget {
  // ignore: prefer_const_constructors
  FormDialogRegistroEnvio formulario = FormDialogRegistroEnvio();

  EnviosMovil({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    FloatingButton floButton = FloatingButton();
    return Scaffold(
        appBar: AppBar(
          title: const Text('Envios'),
        ),
        body: Container(
          padding: const EdgeInsets.only(top: 10.0, left: 10.0, right: 10.0),
          child: ListView(
            children: [buildListEnvios()],
          ),
        ),
        floatingActionButton: floButton.floatingButton(
            btnAction: () => formulario.formDialogRegistroEnvio(context)));
  }
}

final List<Envio> _envios = [
  Envio(
      'Institución educativa técnico industrial nueva esperanza',
      'Jesus david  Arroyo Machado ',
      'calle 32#14-38 vereda la esperanza',
      '3105124349 - 3105124349',
      '5 libros 3 computadores 4 bicicletas',
      () => print('hola')),
  Envio(
      'Institución educativa técnico industrial nueva esperanza',
      'Jesus david  Arroyo Machado ',
      'calle 32#14-38 vereda la esperanza',
      '3105124349 - 3105124349',
      '5 libros 3 computadores 4 bicicletas',
      () => print('hola')),
  Envio(
      'Institución educativa técnico industrial nueva esperanza',
      'Jesus david  Arroyo Machado ',
      'calle 32#14-38 vereda la esperanza',
      '3105124349 - 3105124349',
      '5 libros 3 computadores 4 bicicletas',
      () => print('hola')),
  Envio(
      'Institución educativa técnico industrial nueva esperanza',
      'Jesus david  Arroyo Machado ',
      'calle 32#14-38 vereda la esperanza',
      '3105124349 - 3105124349',
      '5 libros 3 computadores 4 bicicletas',
      () => print('hola')),
  Envio(
      'Institución educativa técnico industrial nueva esperanza',
      'Jesus david  Arroyo Machado ',
      'calle 32#14-38 vereda la esperanza',
      '3105124349 - 3105124349',
      '5 libros 3 computadores 4 bicicletas',
      () => print('hola')),
];

Widget buildListEnvios() {
  return Column(children: _envios.map((envio) => cardEnvios(envio)).toList());
}
