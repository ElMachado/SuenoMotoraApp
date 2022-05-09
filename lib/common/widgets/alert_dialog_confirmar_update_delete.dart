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
        SizedBox(
          width: 90,
          child: OutlinedButton(
            style: OutlinedButton.styleFrom(
              primary: Colors.green,
              side: const BorderSide(
                  color: Colors.green, style: BorderStyle.solid, width: 1.5),
              padding: const EdgeInsets.all(0),
            ),
            child: const Text('Cancelar'),
            onPressed: () {
              Navigator.of(context).pop(false);
            },
          ),
        ),
        SizedBox(
          width: 90,
          child: ElevatedButton(
            child: const Text('Aceptar'),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(
                Colors.green,
              ),
            ),
            onPressed: () {
              _operation();
              Navigator.of(context).pop(true);
            },
          ),
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
