import 'package:flutter/material.dart';
import 'package:suenomotora_app/common/widgets/gallery.dart';
import 'package:swipe_image_gallery/swipe_image_gallery.dart';

import '../../../common/widgets/forms_elements.dart';

class FormDialogDetallesUbicacion extends StatefulWidget {
  const FormDialogDetallesUbicacion({Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    final List<ImageGalleryHeroProperties> heroProperties = [
      const ImageGalleryHeroProperties(tag: 'imageId1'),
      const ImageGalleryHeroProperties(tag: 'imageId2'),
      const ImageGalleryHeroProperties(tag: 'imageId2'),
      const ImageGalleryHeroProperties(tag: 'imageId2'),
      const ImageGalleryHeroProperties(tag: 'imageId2'),
      const ImageGalleryHeroProperties(tag: 'imageId2'),
      const ImageGalleryHeroProperties(tag: 'imageId2'),
    ];

    final List<AssetImage> _assets = [
      const AssetImage('assets/logosuenomotora.png'),
      const AssetImage('assets/librosplaceholder.gif'),
      const AssetImage('assets/librosplaceholder.gif'),
      const AssetImage('assets/locomotora foto.jpg'),
      const AssetImage('assets/train place holder.gif'),
      const AssetImage('assets/train place holder.gif'),
      const AssetImage('assets/train2placeholder.gif')
    ];
    final List<Image> images = [
      const Image(image: AssetImage('assets/logosuenomotora.png')),
      const Image(image: AssetImage('assets/librosplaceholder.gif')),
      const Image(image: AssetImage('assets/librosplaceholder.gif')),
      const Image(image: AssetImage('assets/locomotora foto.jpg')),
      const Image(image: AssetImage('assets/train place holder.gif')),
      const Image(image: AssetImage('assets/train place holder.gif')),
      const Image(image: AssetImage('assets/train2placeholder.gif'))
    ];

    return SimpleDialog(
        title: const Text('Detalles de Ubicación', textAlign: TextAlign.center),
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.8,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    const Text('Líder:', style: TextStyle(fontSize: 15)),
                    const Text(
                      ' Fernando Andres Pineda',
                      style: TextStyle(fontSize: 18, color: Colors.green),
                    ),
                    const Text('Donante:', style: TextStyle(fontSize: 15)),
                    const Text(' Alberto Martínez Álvarez',
                        style: TextStyle(fontSize: 18, color: Colors.green)),
                    const Text('Últimos envíos',
                        style: TextStyle(fontSize: 15)),
                    const Text('2 cajas de libros 1 computador',
                        style: TextStyle(fontSize: 18, color: Colors.green)),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width * 0.8,
                        child: Gallery(_assets, images, heroProperties)
                            .build(context),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        FormsElements.btnsDetallesDesktopTabletUbicacion(
                            context),
                      ],
                    )
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
