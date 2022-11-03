import 'package:flutter/material.dart';
import 'package:gallery/core/presentation/widgets/app_network_image.dart';

class ImageGridItem extends StatelessWidget {
  const ImageGridItem({Key? key, required this.imageUrl}) : super(key: key);

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // todo open in other view if i have time
      },
      child: AppNetworkImage(
        url: imageUrl,
      ),
    );
  }
}
