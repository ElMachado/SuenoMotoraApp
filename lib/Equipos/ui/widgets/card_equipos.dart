import 'package:flutter/material.dart';

class CardEquipos {
  Widget cardEquipos(btnAction) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shadowColor: Colors.red,
      borderOnForeground: true,
      color: Colors.white,
      elevation: 5.0,
      margin: const EdgeInsets.all(20.0),
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
              children: const [
                Text(
                  'Computador ID: ',
                  textAlign: TextAlign.start,
                ),
                Text(
                  'Ram: ',
                  textAlign: TextAlign.start,
                ),
                Text(
                  'Disco duro: 1TB 5600rpm',
                  textAlign: TextAlign.start,
                ),
                Text(
                  'Procesador: Intel Core Duo 1.8 GHZ 65mb de cache 1, 3 chaneles',
                  textAlign: TextAlign.start,
                ),
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
                        btnAction();
                      },
                      child: const Text('Detalles')),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
