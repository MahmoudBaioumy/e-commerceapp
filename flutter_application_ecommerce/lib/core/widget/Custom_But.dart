import 'package:flutter/material.dart';
import 'package:flutter_application_ecommerce/core/utils/Text_Style.dart';
import 'package:flutter_application_ecommerce/core/utils/app_Colors.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    this.background = const Color(0xff30312D),
    required this.text,
    required this.onPressed,
    this.foregroundColor = Colors.white,
    this.height,
    this.width,
    this.radius,
    this.borderRadius,
  });
  final String text;
  final Function() onPressed;
  final Color background;
  final Color foregroundColor;
  final double? height;
  final double? width;
  final double? radius;
  final double? borderRadius;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? 45,
      width: width ?? 45,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              backgroundColor: background ?? AppColor.white1color,
              foregroundColor: foregroundColor ?? AppColor.white1color),
          onPressed: onPressed,
          child: Text(
            text,
            style: getBodystyle(color: AppColor.white1color),
          )),
    );
  }
}
