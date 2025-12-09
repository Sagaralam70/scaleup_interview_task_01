import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  final double? height;
  final double? width;
  final Color? color;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final Widget? child;
  final BorderRadiusGeometry? borderRadius;


  const CustomContainer({
    super.key,
    this.height,
    this.width,
    this.color,
    this.padding,
    this.margin,
    this.child,
    this.borderRadius,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? 100,
      width: width ?? double.infinity,
      padding: padding ?? EdgeInsets.all(10),
      margin: margin ,
      decoration: BoxDecoration(
        color: color ?? Colors.blueAccent,
        borderRadius: borderRadius ,
      ),
      child: child,
    );
  }
}
