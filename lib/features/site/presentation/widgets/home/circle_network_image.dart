import 'package:codingwithsaeed/features/site/presentation/widgets/home/loading_image.dart';
import 'package:codingwithsaeed/features/site/presentation/widgets/home/ripple_animation.dart';
import 'package:codingwithsaeed/features/site/utils/consts.dart';
import 'package:flutter/material.dart';

class CircleNetworkImage extends StatefulWidget {
  const CircleNetworkImage({
    Key? key,
    required this.source,
    this.animated = false,
    this.radius = 90,
    this.animateColor = primaryColor,
  }) : super(key: key);
  final String source;
  final double radius;
  final bool animated;
  final Color animateColor;

  @override
  State<CircleNetworkImage> createState() => _CircleNetworkImageState();
}

class _CircleNetworkImageState extends State<CircleNetworkImage>
    with TickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 1500),
      vsync: this,
    );
    if (widget.animated) _controller.repeat();
  }

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: CirclePainter(_controller, color: widget.animateColor),
      child: CircleAvatar(
        backgroundColor: Colors.transparent, //backgroundImage: imageProvider,
        radius: widget.radius,
        child: ClipOval(child: LoadingImage(image: widget.source)),
      ),
    );
  }
}
