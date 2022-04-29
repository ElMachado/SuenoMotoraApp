import 'package:flutter/material.dart';

class AlertDialogConfirmarUpdateAndDelete extends StatelessWidget {
  String operationType = 'sin operación';
  // ignore: avoid_print
  Function operation = () => print('sin operación.');

  AlertDialogConfirmarUpdateAndDelete(this.operationType, this.operation,
      {Key? key})
      : super(key: key);

  static dynamic buildAlertDialog(context, operationType, operation) {
    return AlertDialog(
      content: Text('Esta seguro que desea $operationType este registro?'),
      actions: [
        ElevatedButton(
          child: const Text('Cancelar'),
          onPressed: () {
            Navigator.of(context).pop(false);
          },
        ),
        ElevatedButton(
          child: const Text('Aceptar'),
          onPressed: () {
            operation();
            Navigator.of(context).pop(true);
          },
        ),
      ],
    );
  }

  @override
  Widget build(
    BuildContext context,
  ) {
    return buildAlertDialog(
      context,
      operationType,
      operation,
    );
  }
}
