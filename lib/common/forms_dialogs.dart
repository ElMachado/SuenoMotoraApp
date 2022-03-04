import 'package:flutter/material.dart';
import 'package:suenomotora_app/common/forms_elements.dart';

class FormsDialogs extends StatefulWidget {
  const FormsDialogs({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }

  static mostrarAlert(BuildContext context) {
    FormsElements formsElements = FormsElements();

    return showDialog(
      context: context,
      barrierDismissible: true,
      builder: (context) {
        return SimpleDialog(
            title: const Text('Registro de colaboradores'),
            children: [
              SizedBox(
                height: 520,
                width: 450,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        formsElements.createInput(),
                        formsElements.createInput(),
                        formsElements.createInput(),
                        formsElements.crearEmail(),
                        formsElements.crearDropDown(),
                        Padding(
                          padding: const EdgeInsets.all(30.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              ElevatedButton(
                                  onPressed: () => Navigator.of(context).pop(),
                                  child: const Text('Cancelar')),
                              ElevatedButton(
                                  onPressed: () => Navigator.of(context).pop(),
                                  child: const Text('Ok')),
                            ],
                          ),
                        ),
                      ]),
                ),
              ),
            ]);
      },
    );
  }
}
