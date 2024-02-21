import 'package:doctor_app/config/colors/app_colors.dart';
import 'package:doctor_app/config/routes/routes_path.dart';
import 'package:doctor_app/core/components/custom_button.dart';
import 'package:doctor_app/core/constant/app_constant.dart';
import 'package:doctor_app/core/helpers/extensions.dart';
import 'package:doctor_app/core/helpers/spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../config/themes/text_styles.dart';

class GetStartedButtonAndDesc extends StatelessWidget {
  const GetStartedButtonAndDesc({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Column(
        children: [
          Text(
            'Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.',
            style: TextStyles.font14Gray,
            textAlign: TextAlign.center,
          ),
          Spacing.verticalSpace(40),
          CustomButton(
            onPressed: () {
              context.navigateAndFinishNyNamed(context, RoutePath.login);
            },
            text: 'Get Started',
            width: AppConstant.deviceWidth(context),
            height: 50.h,
            fontSize: 16.sp,
            color: AppColors.kPrimaryColor,
            textColor: AppColors.kWhiteColor,
            radius: 15.r,
            vertical: 0,
            horizontal: 0,
          ),
        ],
      ),
    );
  }
}
