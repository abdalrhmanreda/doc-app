import 'package:doctor_app/config/themes/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../config/colors/app_colors.dart';
import '../constant/app_constant.dart';

class CustomButton extends StatelessWidget {
  final double? height;
  final double? width;
  final Color? color;
  final double? radius;
  final VoidCallback onPressed;
  final String text;
  final TextStyle? textStyle;
  final EdgeInsets? edgeInsets;

  const CustomButton(
      {super.key,
      required this.onPressed,
      required this.text,
      this.radius,
      this.height,
      this.width,
      this.color,
      this.textStyle,
      this.edgeInsets});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin:
          edgeInsets ?? EdgeInsets.symmetric(vertical: 14.h, horizontal: 12.w),
      width: width ?? AppConstant.deviceWidth(context),
      height: height ?? 47.h,
      decoration: BoxDecoration(
        color: color ?? AppColors.kPrimaryColor,
        borderRadius: BorderRadius.circular(radius ?? 16.r),
      ),
      child: TextButton(
        onPressed: onPressed,
        style: Theme.of(context).textButtonTheme.style,
        child: Text(
          text,
          style: textStyle ?? TextStyles.font16WhiteSemiBold,
        ),
      ),
    );
  }
}
