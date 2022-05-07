import 'package:codingwithsaeed/features/site/presentation/pages/responsive.dart';
import 'package:codingwithsaeed/features/site/presentation/widgets/home/loading_image.dart';
import 'package:flutter/material.dart';

class PortionPicturesWidget extends StatelessWidget {
  const PortionPicturesWidget({
    Key? key,
    required this.pictures,
  }) : super(key: key);

  final List<String> pictures;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.height / 3,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: () {
                showDialog(
                    barrierColor: Colors.transparent,
                    context: context,
                    builder: (context) {
                      return Dialog(
                        backgroundColor: Colors.transparent,
                        child: SafeArea(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: LoadingImage(image: pictures[index]),
                            )),
                      );
                    });
              },
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: LoadingImage(image: pictures[index]),
              ),
            ),
          );
        },
        itemCount: pictures.length,
      ),
    );
  }
}
