import 'package:doctor_app/core/helpers/spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PasswordValidation extends StatelessWidget {
  const PasswordValidation({
    super.key,
    required this.hasLowerCase,
    required this.hasUpperCase,
    required this.hasNumber,
    required this.hasSpecialCharacter,
    required this.hasMinimumLength,
  });

  final bool hasLowerCase;

  final bool hasUpperCase;

  final bool hasNumber;

  final bool hasSpecialCharacter;

  final bool hasMinimumLength;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildValidationRow('At least 8 characters', hasMinimumLength),
        buildValidationRow('At least 8 characters', hasLowerCase),
        buildValidationRow('At least 8 characters', hasUpperCase),
        buildValidationRow('At least 8 characters', hasNumber),
        buildValidationRow('At least 1 special character', hasSpecialCharacter),
      ],
    );
  }

  Widget buildValidationRow(String text, bool hasValidated) {
    return Row(
      children: [
        CircleAvatar(
          radius: 2.5.r,
          backgroundColor: hasValidated ? Colors.green : Colors.red,
        ),
        Spacing.horizontalSpace(8),
        Text(
          text,
          style: TextStyle(
            decoration: hasValidated ? TextDecoration.lineThrough : null,
          ),
        ),
      ],
    );
  }
}
