import 'package:flutter/material.dart';
import 'package:suenomotora_app/Map/ui/widgets/gallery.dart';
import 'package:suenomotora_app/common/widgets/forms_elements.dart';
import 'package:swipe_image_gallery/swipe_image_gallery.dart';

class FormDialogDetallesUbicacion extends StatefulWidget {
  const FormDialogDetallesUbicacion({Key? key}) : super(key: key);

  static formDialogDetallesUbicacion(BuildContext context) {
    FormsElements formsElements = FormsElements();
    final heroProperties = [
      const ImageGalleryHeroProperties(tag: 'imageId1'),
      const ImageGalleryHeroProperties(tag: 'imageId2'),
      const ImageGalleryHeroProperties(tag: 'imageId2'),
      const ImageGalleryHeroProperties(tag: 'imageId2'),
      const ImageGalleryHeroProperties(tag: 'imageId2'),
      const ImageGalleryHeroProperties(tag: 'imageId2'),
      const ImageGalleryHeroProperties(tag: 'imageId2'),
    ];

    const assets = [
      Image(image: AssetImage('assets/librosplaceholder.gif')),
      Image(image: AssetImage('assets/librosplaceholder.gif')),
      Image(image: AssetImage('assets/logosuenomotora.png')),
      Image(image: AssetImage('assets/locomotora foto.jpg')),
      Image(image: AssetImage('assets/train place holder.gif')),
      Image(image: AssetImage('assets/train place holder.gif')),
      Image(image: AssetImage('assets/train2placeholder.gif')),
    ];
    return showDialog(
      context: context,
      barrierDismissible: true,
      useSafeArea: true,
      builder: (context) {
        return SizedBox(
          width: 800,
          child: SimpleDialog(
              insetPadding: const EdgeInsets.all(111),
              title: const Text('Detalles de Ubicación',
                  textAlign: TextAlign.center),
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 100,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text('Lider:', style: TextStyle(fontSize: 20)),
                          Text(' Fernando Andres Pineda'),
                          Text('Donante:', style: TextStyle(fontSize: 20)),
                          Text(' Alberto Martínez Álvarez'),
                          Text('Ultimos envios',
                              style: TextStyle(fontSize: 20)),
                          Text('2 cajas de libros 1 computador'),
                          Text('Galeria de fotos ',
                              style: TextStyle(fontSize: 20)),
                        ]),
                  ),
                ),
                SizedBox(
                    width: 290,
                    height: 290,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Expanded(
                          child: InkWell(
                            onTap: () => SwipeImageGallery(
                              context: context,
                              children: assets,
                              heroProperties: heroProperties,
                            ).show(),
                            child: const Hero(
                              tag: 'imageId1',
                              child: Image(
                                image: AssetImage('assets/locomotora foto.jpg'),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: InkWell(
                            onTap: () => SwipeImageGallery(
                              context: context,
                              children: assets,
                              initialIndex: 1,
                              heroProperties: heroProperties,
                            ).show(),
                            child: const Hero(
                              tag: 'imageId2',
                              child: Image(
                                image: AssetImage('assets/locomotora foto.jpg'),
                              ),
                            ),
                          ),
                        ),
                      ],
                    )),
              ]),
        );
      },
    );
  }

  MaterialPageRoute buildGalery(context) {
    return MaterialPageRoute(
        builder: (BuildContext context) => Galery().galery(context));
  }

  @override
  // ignore: no_logic_in_create_state
  State<StatefulWidget> createState() {
    // ignore: todo
    // TODO: implement createState
    throw UnimplementedError();
  }
}
