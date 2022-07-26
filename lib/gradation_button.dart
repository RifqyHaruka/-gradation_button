library gradation_button;

import 'package:flutter/material.dart';

class GradationButton extends StatelessWidget {
  final double? width;
  final double? height;
  final void Function()? ontap;
  final double radiusTopLeft;
  final double radiusTopRight;
  final double radiusBottomLeft;
  final double radiusBottomRight;
  final Color? gradient1;
  final Color? gradient2;
  final Widget? content;
  final Alignment begin;
  final Alignment end;
  const GradationButton(
      {required this.width,
      required this.height,
      this.ontap,
      required this.content,
      Key? key,
      required this.gradient1,
      required this.gradient2,
      this.radiusTopLeft = 0,
      this.radiusTopRight = 0,
      this.radiusBottomLeft = 0,
      this.radiusBottomRight = 0,
      this.begin = Alignment.centerLeft,
      this.end = Alignment.centerRight})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(radiusTopLeft),
                topRight: Radius.circular(radiusTopRight),
                bottomLeft: Radius.circular(radiusBottomLeft),
                bottomRight: Radius.circular(radiusBottomRight)),
            gradient: LinearGradient(
                colors: [gradient1!, gradient2!], begin: begin, end: end)),
        child: content,
      ),
    );
  }
}
