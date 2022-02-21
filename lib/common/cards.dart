import 'package:flutter/material.dart';

class Cards {
  Widget cardSencillo(String titulo, String contenido,
      {required Function btnAction}) {
    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      child: Column(
        children: <Widget>[
          ListTile(
            leading: const Icon(
              Icons.photo_album,
              color: Colors.blue,
            ),
            title: Text(titulo, style: const TextStyle(fontSize: 20.0)),
            subtitle: Text(contenido, style: const TextStyle(fontSize: 20.0)),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              SizedBox(
                width: 120,
                height: 50,
                child: TextButton(
                    onPressed: () {
                      btnAction();
                    },
                    child: const Text('Detalles')),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget cardSolicitudesEscuelas(
      String nombreEscuela, String responsable, solicitud, numeroTelefono,
      {required Function btnAction}) {
    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      child: Column(
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox.fromSize(size: Size(30, 30)),
              Text('Escuela: $nombreEscuela',
                  style: const TextStyle(fontSize: 20.0)),
              Text('Responsable: $responsable',
                  style: const TextStyle(fontSize: 20.0)),
              Text('Solicitud: $solicitud',
                  style: const TextStyle(fontSize: 20.0)),
              Text('Numero de telefono: $numeroTelefono',
                  style: const TextStyle(fontSize: 20.0)),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              SizedBox(
                width: 120,
                height: 50,
                child: TextButton(
                    onPressed: () {
                      btnAction();
                    },
                    child: const Text('Detalles')),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget cardImage(btnAction) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shadowColor: Colors.red,
      borderOnForeground: false,
      color: Colors.white,
      elevation: 5.0,
      margin: const EdgeInsets.all(20.0),
      semanticContainer: true,
      child: Column(
        children: <Widget>[
          const FadeInImage(
            placeholder: AssetImage('assets/train2placeholder.gif'),
            placeholderFit: BoxFit.cover,
            image: NetworkImage(
                'https://tiendatecnologicadecolombia.com/wp-content/uploads/2021/02/computador-janus-celeron-dual-core-4gb-1tb-21-1.jpg'),
            fadeInDuration: Duration(milliseconds: 200),
            height: 300.0,
            fit: BoxFit.cover,
          ),
          Container(
            child: Column(
              children: <Widget>[
                Column(
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
                      'Procesador: Intel Core Duo 1.8 GHZ 65mb de cache 1, 3 chanels',
                      textAlign: TextAlign.start,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    SizedBox(
                      width: 120,
                      height: 50,
                      child: TextButton(
                          onPressed: () {
                            btnAction();
                          },
                          child: const Text('Detalles')),
                    ),
                  ],
                ),
              ],
            ),
            padding: const EdgeInsets.all(30.0),
          )
        ],
      ),
    );
  }

  Widget CardEnvios(String nombreEscuela, String responsable, direccionEnvio,
      numeroTelefono, contenidoEnvio,
      {required Function btnAction}) {
    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      child: Column(
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox.fromSize(size: Size(30, 30)),
              Text('Escuela: $nombreEscuela',
                  style: const TextStyle(fontSize: 20.0)),
              Text('Responsable: $responsable',
                  style: const TextStyle(fontSize: 20.0)),
              Text('Numero de telefono: $numeroTelefono',
                  style: const TextStyle(fontSize: 20.0)),
              Text('Direccion de envio: $direccionEnvio',
                  style: const TextStyle(fontSize: 20.0)),
              Text('Se envía: $contenidoEnvio',
                  style: const TextStyle(fontSize: 20.0)),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              SizedBox(
                width: 120,
                height: 50,
                child: TextButton(
                    onPressed: () {
                      btnAction();
                    },
                    child: const Text('Detalles')),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
