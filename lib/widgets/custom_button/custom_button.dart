import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Color? color;
  final TextStyle? textStyle;
  final void Function()? onTap;

  const CustomButton({
    super.key,
    required this.text,
    this.onTap,
    this.color,
    this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(backgroundColor: color ?? Colors.white),
        onPressed: onTap,
        child: Text(
          text,
          style:
              textStyle??
              const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
        ),
      ),
    );
  }
}
