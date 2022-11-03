import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:gallery/core/utils/app_colors.dart';
import 'package:gallery/core/utils/assets_manager.dart';
import 'package:shimmer/shimmer.dart';

class AppNetworkImage extends StatelessWidget {
  const AppNetworkImage({
    Key? key,
    required this.url,
    this.width = double.infinity,
    this.height = double.infinity,
  }) : super(key: key);
  final String url;
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: CachedNetworkImage(
        fit: BoxFit.cover,
        imageUrl: url,
        placeholder: (context, url) => SizedBox(
          child: _loadingShimmer(),
        ),
        errorWidget: (context, url, error) => _placeholder(),
      ),
    );
  }

  Widget _placeholder() {
    return Padding(
        padding: const EdgeInsets.all(32),
        child: Image.asset(
          ImageAssets.placeholder,
          color: AppColors.grey,
        ));
  }

  Widget _loadingShimmer() {
    return Shimmer.fromColors(
      baseColor: Colors.grey.shade200,
      highlightColor: Colors.grey.shade400,
      child: const Card(),
    );
  }
}
