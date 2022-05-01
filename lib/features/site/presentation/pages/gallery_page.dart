import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';
import 'package:site/features/site/data/models/galley_model.dart';

class GalleryPage extends StatefulWidget {
  static const id = 'GalleryPage';
  final PageController pageController;
  final GalleryModel model;

  GalleryPage({Key? key, required this.model})
      : pageController = PageController(initialPage: model.index),
        super(key: key);

  @override
  State<GalleryPage> createState() => _GalleryPageState();
}

class _GalleryPageState extends State<GalleryPage> {
  late int index = widget.model.index;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: PhotoViewGallery.builder(
        backgroundDecoration: const BoxDecoration(color: Colors.transparent),
        pageController: widget.pageController,
        itemCount: widget.model.pictures.length,
        builder: (context, index) {
          var image = widget.model.pictures[index];
          return PhotoViewGalleryPageOptions(
            imageProvider: NetworkImage(image),
            minScale: PhotoViewComputedScale.contained,
            maxScale: PhotoViewComputedScale.contained * 2,
          );
        },
        onPageChanged: (index) => setState(() => this.index = index),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (index != 0)
              FloatingActionButton.small(
                  backgroundColor: Colors.grey.withOpacity(0.5),
                  child: Icon(
                    widget.model.locale.toLowerCase() == 'fa'
                        ? Icons.keyboard_arrow_right_rounded
                        : Icons.keyboard_arrow_left_rounded,
                  ),
                  onPressed: () {
                    setState(() => index--);
                    widget.pageController.animateToPage(index,
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.easeIn);
                  }),
            const SizedBox(width: 10),
            if (index < widget.model.pictures.length - 1)
              FloatingActionButton.small(
                backgroundColor: Colors.grey.withOpacity(0.5),
                child: Icon(widget.model.locale.toLowerCase() == 'fa'
                    ? Icons.keyboard_arrow_left_rounded
                    : Icons.keyboard_arrow_right_rounded),
                onPressed: () {
                  setState(() => index++);
                  widget.pageController.animateToPage(index,
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.easeIn);
                },
              ),
          ],
        ),
      ),
    );
  }
}
