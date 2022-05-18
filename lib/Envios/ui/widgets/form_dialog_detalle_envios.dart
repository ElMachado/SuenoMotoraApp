import 'package:flutter/material.dart';
import 'package:suenomotora_app/common/widgets/forms_elements.dart';

class FormDialogDetalleEnvio extends StatefulWidget {
  const FormDialogDetalleEnvio({Key? key}) : super(key: key);
  responsiveButtons(context) {
    if (MediaQuery.of(context).size.width <= 600) {
      return FormsElements.btnsDetallesMovil(context);
    } else {
      return FormsElements.btnsDetallesDesktopTablet(context);
    }
  }

  Widget build(BuildContext context) {
    return SimpleDialog(title: const Text('Detalle de Envio'), children: [
      SizedBox(
        width: 400,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FormsElements.createInput(
                    'Nombre de la escuela', 'Nombre de la escuela', 'escuela'),
                FormsElements.createInput(
                  'Nombre responsable',
                  'nombre responsable',
                  'person_outline',
                ),
                FormsElements.createInput(
                    'direccion de envio', 'direccion de envio', 'direccion'),
                FormsElements.createInput('Telefono', 'Telefono', 'telefono'),
                FormsElements.boxImput(
                    'Contenido de envio', 'Contenido de envio', 'contenido'),
                responsiveButtons(context)
              ]),
        ),
      ),
    ]);
  }

  @override
  // ignore: no_logic_in_create_state
  State<StatefulWidget> createState() {
    // ignore: todo
    // TODO: implement createState
    throw UnimplementedError();
  }
}
