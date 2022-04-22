import 'package:flutter/material.dart';
import 'package:suenomotora_app/common/widgets/forms_elements.dart';

class FormDialogDetalleEnvio extends StatefulWidget {
  const FormDialogDetalleEnvio({Key? key}) : super(key: key);

  Future formDialogDetalleEnvio(BuildContext context) {
    FormsElements formsElements = FormsElements();

    return showDialog(
      context: context,
      barrierDismissible: true,
      builder: (context) {
        return SimpleDialog(title: const Text('Registro de Envios'), children: [
          SizedBox(
            width: 400,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    formsElements.createInput(
                        'Nombre de la escuela', 'Nombre de la escuela'),
                    formsElements.createInput(
                      'Nombre responsable',
                      'nombre responsable',
                    ),
                    formsElements.createInput(
                        'direccion de envio', 'direccion de envio'),
                    formsElements.createInput('Telefono', 'Telefono'),
                    formsElements.boxImput(
                        'Contenido de envio', 'Contenido de envio'),
                    formsElements.btnsformDetalles(context)
                  ]),
            ),
          ),
        ]);
      },
    );
  }

  @override
  // ignore: no_logic_in_create_state
  State<StatefulWidget> createState() {
    // ignore: todo
    // TODO: implement createState
    throw UnimplementedError();
  }
}
