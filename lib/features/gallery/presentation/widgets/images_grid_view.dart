import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gallery/core/utils/app_strings.dart';
import 'package:gallery/core/utils/media_query_values.dart';
import 'package:gallery/features/gallery/presentation/widgets/image_grid_item.dart';

class ImagesGridView extends StatelessWidget {
  const ImagesGridView({Key? key, required this.images}) : super(key: key);

  final List<String> images;

  @override
  Widget build(BuildContext context) {
    if (images.isEmpty) {
      return Center(
        child: Text(
          AppStrings.noImages,
          style: Theme.of(context).textTheme.bodyLarge,
        ),
      );
    }
    return GridView.builder(
      padding: EdgeInsets.zero,
      primary: false,
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: context.tabletSize ? 6 : 3,
        childAspectRatio: 1,
        mainAxisSpacing: 16.w,
        crossAxisSpacing: 16.w,
      ),
      itemBuilder: (context, index) => ImageGridItem(imageUrl: images[index]),
      itemCount: images.length,
    );
  }
}
