import 'package:codingwithsaeed/features/site/presentation/pages/responsive.dart';
import 'package:codingwithsaeed/features/site/utils/consts.dart';
import 'package:flutter/material.dart';

class SectionHeader extends StatelessWidget {
  final String title;

  const SectionHeader({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: primaryColor,
      ),
      width: double.infinity,
      padding: const EdgeInsets.all(8.0),
      child: Text(
        title,
        textAlign: TextAlign.center,
        style: context.headerStyle.copyWith(color: Colors.white),
      ),
    );
  }
}
