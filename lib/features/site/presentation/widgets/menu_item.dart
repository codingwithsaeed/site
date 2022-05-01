import 'package:flutter/material.dart';
import 'package:site/features/site/presentation/pages/responsive.dart';

class MenuItem extends StatelessWidget {
  final String title;
  final IconData? icon;
  final VoidCallback? onTap;

  const MenuItem({Key? key, required this.title, this.icon, this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: ListTile(
        title: Text(
          title,
          style: context.normalStyle,
        ),
        leading: Icon(icon),
        onTap: onTap,
      ),
    );
  }
}
