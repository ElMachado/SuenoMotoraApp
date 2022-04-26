import 'package:flutter/material.dart';
import 'package:suenomotora_app/common/widgets/forms_elements.dart';
import 'package:suenomotora_app/common/widgets/gallery.dart';
import 'package:swipe_image_gallery/swipe_image_gallery.dart';

class FormDialogDetallesUbicacion extends StatefulWidget {
  const FormDialogDetallesUbicacion({Key? key}) : super(key: key);
  static _responsiveButtons(context) {
    FormsElements formsElements = FormsElements();

    if (MediaQuery.of(context).size.width <= 600) {
      return formsElements.btnsDetallesMovil(context);
    } else {
      return formsElements.btnsDetallesDesktopTabletUbicacion(context);
    }
  }

  static formDialogDetallesUbicacion(BuildContext context) {
    FormsElements _formsElements = FormsElements();
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

    return showDialog(
      context: context,
      barrierDismissible: true,
      useSafeArea: true,
      builder: (context) {
        return SizedBox(
          width: 600,
          child: SimpleDialog(
              title: const Text('Detalles de Ubicación',
                  textAlign: TextAlign.center),
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.5,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text('Líder:', style: TextStyle(fontSize: 20)),
                          Text(' Fernando Andres Pineda'),
                          Text('Donante:', style: TextStyle(fontSize: 20)),
                          Text(' Alberto Martínez Álvarez'),
                          Text('Últimos envíos',
                              style: TextStyle(fontSize: 20)),
                          Text('2 cajas de libros 1 computador'),
                          Text('Galería de fotos ',
                              style: TextStyle(fontSize: 20)),
                        ]),
                  ),
                ),
                Gallery(_assets, images, heroProperties).build(context),
                _responsiveButtons(context)
              ]),
        );
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
