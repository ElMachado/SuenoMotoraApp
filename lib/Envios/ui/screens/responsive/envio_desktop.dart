import 'package:flutter/material.dart';
import 'package:suenomotora_app/Envios/ui/widgets/card_envio.dart';

import '../../../../common/repository/get_data.dart';
import '../../../../common/widgets/floating_button.dart';
import '../../../model/envio.dart';
import '../../widgets/form_dialog_registro_envio.dart';

class EnviosDesktop extends StatelessWidget {
  const EnviosDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    FloatingButton floButton = FloatingButton();

    // final _size = MediaQuery.of(context).size.width;
    // double aspectRatio = 10.0;
    // print(_size);
    // print(aspectRatio);
    GetData donanteStream = GetData();

    return Scaffold(
        appBar: AppBar(
          title: const Text('Envios'),
        ),
        body: StreamBuilder<List<Envio>>(
          stream: donanteStream.enviosStream(),
          builder: (context, AsyncSnapshot<List<Envio>> snapshot) {
            if (snapshot.hasError) {
              return Text('Error 1: ${snapshot.error}');
            }
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator());
            } else if (snapshot.hasData) {
              return GridView.builder(
                  itemCount: snapshot.data!.toList().length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4,
                      mainAxisSpacing: 1,
                      crossAxisSpacing: 1,
                      childAspectRatio: 1007 * 2.8 / 1920),
                  itemBuilder: (context, index) {
                    Envio currentSolicitud = snapshot.data![index];
                    return FittedBox(
                        fit: BoxFit.fill,
                        child: CardEnvios(envio: currentSolicitud));
                  });
            } else {
              return const Center(
                child: Text('2 Un error a ocurrido'),
              );
            }
          },
        ),
        floatingActionButton: floButton.floatingButton(
          btnAction: () =>
              FormDialogRegistroEnvio.mostrarDialogRegistroEnvio(context),
        ));
  }
}
