import 'package:doctor_app/config/colors/app_colors.dart';
import 'package:doctor_app/config/themes/text_styles.dart';
import 'package:doctor_app/core/helpers/spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../generated/assets.dart';

class LogoAndName extends StatelessWidget {
  const LogoAndName({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(
          Assets.imagesLogo,
          width: 50,
          height: 50,
          color: AppColors.kPrimaryColor,
        ),
        Spacing.horizontalSpace(10),
        Text(
          'DocDoc',
          style: TextStyles.font30Black700Weight,
        ),
      ],
    );
  }
}
