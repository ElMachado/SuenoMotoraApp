import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImageGetter extends StatefulWidget {
  final String buttonText;

  const ImageGetter({
    Key? key,
    required this.buttonText,
  }) : super(key: key);

  @override
  State<ImageGetter> createState() => _ImageGetterState();
}

class _ImageGetterState extends State<ImageGetter> {
  late File imagen = File('assets/locomotorafoto.jpg');
  final picker = ImagePicker();
  bool stateOfSelectedImage = false;

  Future selectImage(opcion) async {
    XFile? selectedFile;

    (opcion == 1)
        ? selectedFile = await picker.pickImage(source: ImageSource.camera)
        : selectedFile = await picker.pickImage(source: ImageSource.gallery);

    setState(() {
      if (selectedFile != null) {
        stateOfSelectedImage = true;
        imagen = File(selectedFile.path);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        ElevatedButton.icon(
          onPressed: () {
            showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: const Text('Seleccione una opción'),
                    actions: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              selectImage(1);
                              Navigator.pop(context);
                            },
                            child: const Text('Desde la Cámara'),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              selectImage(0);
                              Navigator.pop(context);
                            },
                            child: const Text('Desde la Galería'),
                          )
                        ],
                      ),
                    ],
                  );
                });
          },
          label: Text(widget.buttonText),
          icon: const Icon(Icons.add_a_photo),
        ),
        Container(
            child:
                (stateOfSelectedImage) ? Image.file(imagen) : const Center()),
      ],
    );
  }
}
