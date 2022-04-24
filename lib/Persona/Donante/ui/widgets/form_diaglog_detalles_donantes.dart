import 'package:flutter/material.dart';

import 'package:suenomotora_app/common/widgets/forms_elements.dart';

class FormDialogDetallesDonantes extends StatefulWidget {
  const FormDialogDetallesDonantes({Key? key}) : super(key: key);
  static responsiveButtons(context) {
    FormsElements formsElements = FormsElements();

    if (MediaQuery.of(context).size.width <= 600) {
      return formsElements.btnsDetallesMovil(context);
    } else {
      return formsElements.btnsDetallesDesktopTablet(context);
    }
  }

  static formDialogDetallesDonantes(BuildContext context) {
    FormsElements formsElements = FormsElements();

    return showDialog(
      context: context,
      barrierDismissible: true,
      builder: (context) {
        return SimpleDialog(
            title: const Text('Detalles de Donante'),
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child:
                    Column(mainAxisAlignment: MainAxisAlignment.end, children: [
                  formsElements.createInput('Nombre', 'nombre'),
                  formsElements.createInput('Telefono', 'Telefono'),
                  formsElements.createInput(
                      'Correo electronico', 'Correo electronico'),
                  responsiveButtons(context)
                ]),
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
