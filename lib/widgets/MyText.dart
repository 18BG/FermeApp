import 'package:flutter/material.dart';

class MyText extends StatelessWidget {
  final String? text;
  final double? size;
  final Color? color;
  final FontStyle? style;
  final FontWeight? weight;
  final TextOverflow? overflow;
  final int? maxl;
  final TextAlign? textAlign;
  const MyText(
      {super.key,
      this.text,
      this.size,
      this.color,
      this.style,
      this.weight,
      this.overflow,
      this.maxl,
      this.textAlign});

  @override
  Widget build(BuildContext context) {
    return Text(
      text ?? "",
      style: TextStyle(
          fontStyle: style,
          fontSize: size ?? 15,
          color: color ?? Colors.black,
          fontWeight: weight ?? FontWeight.normal,
          overflow: overflow),
      textAlign: textAlign ?? TextAlign.left,
      maxLines: maxl,
    );
  }
}
