import 'package:flutter/material.dart';
import 'package:gallery/core/presentation/widgets/app_network_image.dart';

class ViewImagePage extends StatefulWidget {
  const ViewImagePage({Key? key}) : super(key: key);

  @override
  State<ViewImagePage> createState() => _ViewImagePageState();
}

class _ViewImagePageState extends State<ViewImagePage> {
  late String imageUrl;

  @override
  void didChangeDependencies() {
    imageUrl = ModalRoute.of(context)?.settings.arguments as String;
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(),
      body: Hero(
        tag: imageUrl,
        child: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: AppNetworkImage(
            url: imageUrl,
          ),
        ),
      ),
    );
  }
}
