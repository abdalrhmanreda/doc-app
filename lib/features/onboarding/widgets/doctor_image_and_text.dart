import 'package:doctor_app/generated/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../config/themes/text_styles.dart';

class DoctorImageAndText extends StatelessWidget {
  const DoctorImageAndText({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          SvgPicture.asset(
            Assets.imagesGroup,
          ),
          Container(
            width: double.infinity,
            foregroundDecoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [
                  Colors.white,
                  Colors.white.withOpacity(0),
                ],
                stops: const [
                  0.14,
                  0.4
                ], // Adjusted stops for a smoother transition
              ),
            ),
            child: Image.asset(
              Assets.imagesDoctor,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            bottom: 15,
            left: 0,
            right: 0,
            child: Text(
              'Best Doctor\nAppointment App',
              textAlign: TextAlign.center,
              style: TextStyles.font30BlueBold,
            ),
          ),
        ],
      ),
    );
  }
}
