import 'package:flutter/material.dart';
import 'package:swipe_image_gallery/swipe_image_gallery.dart';

class Gallery extends StatelessWidget {
  List<AssetImage> _assets = [];
  List<Image> _images = [];
  List<ImageGalleryHeroProperties> _heroProperties = [];

  Gallery(List<AssetImage> asset, List<Image> images,
      List<ImageGalleryHeroProperties> heroProperties,
      {Key? key})
      : super(key: key) {
    _assets = asset;
    _images = images;
    _heroProperties = heroProperties;
  }

  static List<Widget> buildInkWells(context, index, List<AssetImage> asset,
      List<Image> images, List<ImageGalleryHeroProperties> heroProperties) {
    List<Widget> list = [];
    for (var i = 0; i < asset.length; i++) {
      list.add(InkWell(
        onTap: () => SwipeImageGallery(
          context: context,
          children: images,
          heroProperties: heroProperties,
          initialIndex: i,
        ).show(),
        child: Hero(
          tag: heroProperties,
          child: Image(image: asset[i]),
        ),
      ));
    }
    return list;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 290,
        height: 290,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: _assets.length,
          itemBuilder: (context, index) {
            return buildInkWells(
                    context, _assets.length, _assets, _images, _heroProperties)
                .elementAt(index);
          },
        ));
  }
}
