import 'package:flutter/material.dart';

import 'form_dialog_detalle_equipo.dart';

class CardEquipos extends StatelessWidget {
  const CardEquipos({
    Key? key,
  }) : super(key: key);

  _buildFormDetalles(context) {
    return showDialog(
      context: context,
      barrierDismissible: true,
      builder: (context) {
        return const FormDialogDetalleEquipos().build(context);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Card(
        clipBehavior: Clip.antiAlias,
        borderOnForeground: true,
        color: Colors.white,
        elevation: 5.0,
        semanticContainer: true,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            const FadeInImage(
              placeholder: AssetImage('assets/train2placeholder.gif'),
              placeholderFit: BoxFit.cover,
              image: NetworkImage(
                  'https://tiendatecnologicadecolombia.com/wp-content/uploads/2021/02/computador-janus-celeron-dual-core-4gb-1tb-21-1.jpg'),
              fadeInDuration: Duration(milliseconds: 200),
              //height: 150.0,
              fit: BoxFit.cover,
            ),
            Container(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Text(
                    'Computador ID: ',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                    ),
                    textAlign: TextAlign.start,
                  ),
                  Text(
                    '001',
                    textAlign: TextAlign.start,
                  ),
                  Text(
                    'Ram: ',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                    ),
                  ),
                  Text('4GB', textAlign: TextAlign.start),
                  Text(
                    'Disco duro:',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                    ),
                  ),
                  Text(' 1TB 5600rpm', textAlign: TextAlign.start),
                  Text(
                    'Procesador:',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                    ),
                  ),
                  Text('Intel Core Duo 1.8 GHZ 65mb de cache 1, 3 chaneles')
                ],
              ),
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: SizedBox(
                    width: 110,
                    height: 40,
                    child: TextButton(
                        onPressed: () {
                          _buildFormDetalles(context);
                        },
                        child: const Text('Detalles',
                            style: TextStyle(
                              fontSize: 20,
                            ))),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
