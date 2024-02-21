import 'package:doctor_app/core/helpers/spacing.dart';
import 'package:doctor_app/features/onboarding/widgets/doctor_image_and_text.dart';
import 'package:doctor_app/features/onboarding/widgets/get_started_button.dart';
import 'package:doctor_app/features/onboarding/widgets/logo_and_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnboardScreen extends StatelessWidget {
  const OnboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(
              top: 30.h,
              bottom: 30.h,
              left: 20.w,
              right: 20.w,
            ),
            child: Column(
              children: [
                const LogoAndName(),
                Spacing.verticalSpace(30),
                const DoctorImageAndText(),
                Spacing.verticalSpace(30),
                const GetStartedButtonAndDesc(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
