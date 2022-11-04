import 'package:flutter/material.dart';
import 'package:gallery/core/utils/media_query_values.dart';

class PageWithBackground extends StatelessWidget {
  const PageWithBackground(
      {Key? key, required this.backgroundAssetName, required this.child})
      : super(key: key);
  final String backgroundAssetName;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const SizedBox.shrink(),
      ),
      extendBodyBehindAppBar: true,
      resizeToAvoidBottomInset: false,
      body: Stack(
        alignment: context.tabletSize
            ? Alignment.center
            : AlignmentDirectional.topStart,
        children: [
          Image.asset(
            backgroundAssetName,
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
          ),
          child,
        ],
      ),
    );
  }
}
