import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../colors/app_colors.dart';

class TextStyles {
  static TextStyle font30Black700Weight = TextStyle(
    color: AppColors.kBlackColor,
    fontWeight: FontWeight.w700,
    fontSize: 30.sp,
  );

  static TextStyle font30BlueBold = TextStyle(
    color: AppColors.kPrimaryColor,
    fontWeight: FontWeight.bold,
    fontSize: 29.sp,
    height: 1.4,
  );

  static TextStyle font14Gray = TextStyle(
    color: AppColors.kGreyColor,
    fontSize: 14.sp,
  );
}
