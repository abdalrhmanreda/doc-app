import 'package:doctor_app/config/themes/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../config/colors/app_colors.dart';

class AppTextFormField extends StatelessWidget {
  const AppTextFormField({
    super.key,
    this.formFieldKey,
    this.isPassword,
    this.type,
    this.controller,
    this.validate,
    this.onTap,
    this.suffixIcon,
    this.suffixPressed,
    this.edgeInsetsGeometry,
    this.hint,
    this.onChanged,
    this.onSubmitted,
    this.prefixIcon,
    this.labelStyle,
    this.hintStyle,
    this.maxLine,
    this.minLine,
    this.isEnable,
    this.scrollController,
    this.autofocus,
    this.focusNode,
    this.floatingLabelBehavior,
    this.hintTextDirection,
    this.hintMaxLines,
    this.onSaved,
    this.label,
    this.unFocusBorderColor,
    this.focusColorBorder,
    this.enabledBorder,
    this.focusedBorder,
    this.border,
    this.fillColor,
  });

  final ScrollController? scrollController;
  final bool? isPassword;
  final bool? autofocus;
  final TextInputType? type;
  final TextEditingController? controller;
  final String? Function(String?)? onSubmitted;
  final String? Function(String?)? onSaved;
  final String? Function(String?)? onChanged;
  final String? Function(String?)? validate;
  final String? hint;
  final IconData? prefixIcon;
  final IconData? suffixIcon;
  final VoidCallback? onTap;
  final VoidCallback? suffixPressed;
  final EdgeInsetsGeometry? edgeInsetsGeometry;
  final String? label;
  final TextStyle? hintStyle;
  final TextStyle? labelStyle;
  final bool? isEnable;
  final int? maxLine;
  final int? minLine;
  final FocusNode? focusNode;
  final FloatingLabelBehavior? floatingLabelBehavior;
  final TextDirection? hintTextDirection;
  final int? hintMaxLines;
  final Key? formFieldKey;
  final Color? unFocusBorderColor;
  final Color? focusColorBorder;
  final InputBorder? enabledBorder;
  final InputBorder? focusedBorder;
  final InputBorder? border;
  final Color? fillColor;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      key: formFieldKey,
      scrollController: scrollController,
      obscureText: isPassword ?? false,
      keyboardType: type,
      style: TextStyles.font14DarkBlueMedium,
      controller: controller,
      onFieldSubmitted: onSubmitted,
      onSaved: onSaved,
      onChanged: onChanged,
      validator: validate,
      maxLines: maxLine ?? 1,
      minLines: minLine,
      onTap: onTap,
      enabled: isEnable,
      focusNode: focusNode,
      decoration: InputDecoration(
        filled: true,
        fillColor: fillColor ?? AppColors.kBackgroundHintTextColor,
        isDense: true,
        hintTextDirection: hintTextDirection,
        hintMaxLines: hintMaxLines,
        helperStyle: const TextStyle(
          decorationStyle: TextDecorationStyle.dotted,
        ),
        contentPadding: edgeInsetsGeometry ??
            EdgeInsets.symmetric(
              horizontal: 10.w,
              vertical: 20.h,
            ),
        prefixIcon: Icon(
          prefixIcon,
          size: 20,
          color: Theme.of(context).colorScheme.onSurface,
        ),
        border: border ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(16.r),
              borderSide: BorderSide(
                color: unFocusBorderColor!,
              ),
            ),
        focusedBorder: focusedBorder ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(16.r),
              borderSide: BorderSide(
                color: focusColorBorder ?? AppColors.kPrimaryColor,
              ),
            ),
        enabledBorder: enabledBorder ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(16.r),
              borderSide: BorderSide(
                color: unFocusBorderColor!,
              ),
            ),
        hintStyle: hintStyle ?? TextStyles.font13GrayRegular,
        hintText: hint,
        labelText: label ?? '',
        suffixIcon: suffixIcon != null
            ? InkWell(
                onTap: suffixPressed,
                child: Icon(
                  suffixIcon,
                  color: AppColors.kHintTextColor,
                ))
            : null,
        labelStyle: Theme.of(context).textTheme.bodyMedium,
        floatingLabelBehavior: FloatingLabelBehavior.always,
        floatingLabelStyle: Theme.of(context).textTheme.bodyMedium!.copyWith(
              color: AppColors.kPrimaryColor,
            ),
      ),
      cursorColor: AppColors.kPrimaryColor,
    );
  }
}
