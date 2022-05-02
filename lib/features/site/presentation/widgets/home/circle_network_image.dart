import 'package:flutter/material.dart';
import 'package:site/features/site/presentation/widgets/home/loading_image.dart';

class CircleNetworkImage extends StatelessWidget {
  const CircleNetworkImage({Key? key, required this.source, this.radius = 90})
      : super(key: key);
  final String source;
  final double radius;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Colors.transparent, //backgroundImage: imageProvider,
      radius: radius,
      child: ClipOval(child: LoadingImage(image: source)),
    );
  }
}
