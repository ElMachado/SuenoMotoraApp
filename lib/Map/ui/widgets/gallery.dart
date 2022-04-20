import 'package:flutter/material.dart';
import 'package:swipe_image_gallery/swipe_image_gallery.dart';

class Galery {
  final urlImages = [
    'https://images.unsplash.com/photo-1518791841217-8f162f1e1131?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60',
    'https://images.unsplash.com/photo-1512341689857-198e7e2f3ca8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60',
    'https://images.unsplash.com/photo-1506794778202-cad84cf45f1d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60',
    'https://images.unsplash.com/photo-1518791841217-8f162f1e1131?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60',
    'https://images.unsplash.com/photo-1512341689857-198e7e2f3ca8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60',
    'https://images.unsplash.com/photo-1506794778202-cad84cf45f1d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60',
    'https://images.unsplash.com/photo-1518791841217-8f162f1e1131?ixlib=rb-1.'
  ];
  final heroProperties = [
    const ImageGalleryHeroProperties(tag: 'imageId1'),
    const ImageGalleryHeroProperties(tag: 'imageId2'),
  ];

  final assets = const [
    Image(image: AssetImage('assets/1.jpeg')),
    Image(image: AssetImage('assets/2.jpeg')),
  ];

  Widget galery(BuildContext context) {
    return Row(
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
    );
  }
}
