import 'package:flutter/material.dart';
import 'package:suenomotora_app/Envios/model/Envio.dart';
import 'package:suenomotora_app/Envios/ui/widgets/card_envio.dart';
import 'package:suenomotora_app/common/cards.dart';
import 'package:suenomotora_app/common/floating_button.dart';

class EnviosDesktop extends StatelessWidget {
  const EnviosDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Cards card = Cards();
    FloatingButton floButton = FloatingButton();
    final _size = MediaQuery.of(context).size.width;
    double aspectRatio = 10.0;
    print(_size);

    // _size >= 1590.0 && _size <= 2920
    //     ? aspectRatio = (100 / 52)
    //     : aspectRatio = (100 / 54);
    // _size >= 1525.0 && _size <= 1581.0
    //     ? aspectRatio = (100 / 72)
    //     : aspectRatio = (100 / 52);
    // _size >= 1201.0 && _size <= 1525.0
    //     ? aspectRatio = (100 / 92)
    //     : aspectRatio = (100 / 52);
    print(aspectRatio);
    return Scaffold(
        appBar: AppBar(
          title: const Text('Envios'),
        ),
        body: Container(
          padding: const EdgeInsets.only(top: 10.0, left: 10.0, right: 10.0),
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio: 0.85, crossAxisCount: 4),
            addAutomaticKeepAlives: true,
            addRepaintBoundaries: true,
            addSemanticIndexes: true,
            itemCount: _envios.length,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return cardEnvios(_envios[index]);
            },
          ),
        ),
        floatingActionButton:
            floButton.floatingButton(btnAction: () => print('hola')));
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
