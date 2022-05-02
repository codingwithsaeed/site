import 'package:flutter/material.dart';

class FlagButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String asset;

  const FlagButton({
    required this.onPressed,
    required this.asset,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 48,
      height: 48,
      child: IconButton(onPressed: onPressed, icon: Image.asset(asset)),
    );
  }
}
