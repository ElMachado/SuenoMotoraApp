import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:suenomotora_app/Envios/ui/widgets/form_dialog_registro_envio.dart';
import 'package:suenomotora_app/providers/envios_provider.dart';

import '../../../model/envio.dart';
import '../../widgets/card_envio.dart';

class EnviosMovil extends StatelessWidget {
  const EnviosMovil({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Access the provider
    final enviosProvider = Provider.of<EnviosProvider>(context);
    final enviosStream = enviosProvider.enviosStream;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Envíos'),
      ),
      body: StreamBuilder<List<Envio>>(
        stream: enviosStream,
        builder: (BuildContext context, AsyncSnapshot<List<Envio>> snapshot) {
          if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          }

          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }

          if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return const Center(
              child: Text('No hay envíos para mostrar.'),
            );
          }

          final envios = snapshot.data!;

          return ListView.builder(
            padding: const EdgeInsets.all(8.0),
            physics: const BouncingScrollPhysics(),
            itemCount: envios.length,
            itemBuilder: (context, index) {
              final envio = envios[index];
              // Removed the harmful FittedBox wrapper
              return CardEnvios(envio: envio);
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) {
              return const FormDialogRegistroEnvio();
            },
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
