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
      width: 30,
      height: 30,
      child: MaterialButton(
          padding: const EdgeInsets.all(0),
          onPressed: onPressed,
          child: Image.asset(asset)),
    );
  }
}
