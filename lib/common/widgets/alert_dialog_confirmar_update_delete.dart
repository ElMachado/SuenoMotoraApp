import 'package:flutter/material.dart';

class AlertDialogConfirmarUpdateAndDelete extends StatelessWidget {
  final String _operationType;
  final Function _operation;

  const AlertDialogConfirmarUpdateAndDelete(
      this._operationType, this._operation,
      {Key? key})
      : super(key: key);

  static dynamic buildAlertDialog(context, _operationType, _operation) {
    return AlertDialog(
      content: Text('¿Esta seguro que desea $_operationType este registro?'),
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
            _operation();
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
      _operationType,
      _operation,
    );
  }
}
