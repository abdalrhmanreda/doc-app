import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../core/constant/current_local.dart';
import '../colors/app_colors.dart';

class Style {
  static final ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: AppColors.kWhiteColor,
    useMaterial3: false,
    colorScheme: ThemeData().colorScheme.copyWith(
          primary: AppColors.kPrimaryColor,
          onPrimary: AppColors.kPrimaryColor,
          onSurface: AppColors.kBlackColor,
        ),
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.kWhiteColor,
      elevation: 0,
      titleTextStyle: GoogleFonts.rubik(
        color: AppColors.kBlackColor,
        fontSize: 16.sp,
      ),
      systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarColor: AppColors.kBlackColor,
        statusBarBrightness: Brightness.light,
      ),
    ),
    textTheme: TextTheme(
      bodyLarge: isArabic()
          ? GoogleFonts.rubik(
              color: AppColors.kBlackColor,
            )
          : GoogleFonts.rubik(
              color: AppColors.kBlackColor,
            ),
      bodyMedium: isArabic()
          ? GoogleFonts.rubik(
              color: AppColors.kBlackColor,
            )
          : GoogleFonts.rubik(
              color: AppColors.kBlackColor,
            ),
      bodySmall: isArabic()
          ? GoogleFonts.rubik(
              color: AppColors.kBlackColor,
            )
          : GoogleFonts.rubik(
              color: AppColors.kBlackColor,
            ),
      titleLarge: isArabic()
          ? GoogleFonts.rubik(
              color: AppColors.kBlackColor,
            )
          : GoogleFonts.rubik(
              color: AppColors.kBlackColor,
            ),
      titleMedium: isArabic()
          ? GoogleFonts.rubik(
              color: AppColors.kBlackColor,
            )
          : GoogleFonts.rubik(
              color: AppColors.kBlackColor,
            ),
      titleSmall: isArabic()
          ? GoogleFonts.rubik(
              color: AppColors.kBlackColor,
            )
          : GoogleFonts.rubik(
              color: AppColors.kBlackColor,
            ),
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: AppColors.kPrimaryColor,
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: AppColors.kWhiteColor,
      selectedItemColor: AppColors.kPrimaryColor,
      unselectedItemColor: Colors.grey,
      type: BottomNavigationBarType.fixed,
    ),
    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        textStyle: MaterialStateProperty.all(
          isArabic()
              ? GoogleFonts.rubik(
                  color: AppColors.kPrimaryColor,
                )
              : GoogleFonts.rubik(
                  color: AppColors.kPrimaryColor,
                ),
        ),
      ),
    ),
    datePickerTheme: DatePickerThemeData(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      headerBackgroundColor: AppColors.kPrimaryColor,
      todayBackgroundColor: MaterialStateProperty.all(
        AppColors.kPrimaryColor,
      ),
    ),
  );

  static final ThemeData darkTheme = ThemeData(
    // scaffoldBackgroundColor: const Color(AppColors.kDarkThemColor),
    colorScheme: ThemeData().colorScheme.copyWith(
          primary: AppColors.kPrimaryColor,
          onPrimary: AppColors.kPrimaryColor,
          onSurface: AppColors.kBlackColor, // body text color
          brightness: Brightness.dark,
        ),
    appBarTheme: AppBarTheme(
      // backgroundColor: const Color(AppColors.kDarkThemColor),
      elevation: 0,
      backgroundColor: AppColors.kAppBarColor,
      titleTextStyle: GoogleFonts.rubik(
        color: AppColors.kWhiteColor,
        fontSize: 18.sp,
      ),
      systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarBrightness: Brightness.dark,
      ),
    ),
    textTheme: TextTheme(
      bodyLarge: isArabic()
          ? GoogleFonts.rubik(
              color: AppColors.kBlackColor,
            )
          : GoogleFonts.rubik(
              color: AppColors.kBlackColor,
            ),
      bodyMedium: isArabic()
          ? GoogleFonts.rubik(
              color: AppColors.kBlackColor,
            )
          : GoogleFonts.rubik(
              color: AppColors.kBlackColor,
            ),
      bodySmall: isArabic()
          ? GoogleFonts.rubik(
              color: AppColors.kBlackColor,
            )
          : GoogleFonts.rubik(
              color: AppColors.kBlackColor,
            ),
      titleLarge: isArabic()
          ? GoogleFonts.rubik(
              color: AppColors.kBlackColor,
            )
          : GoogleFonts.rubik(
              color: AppColors.kBlackColor,
            ),
      titleMedium: isArabic()
          ? GoogleFonts.rubik(
              color: AppColors.kBlackColor,
            )
          : GoogleFonts.rubik(
              color: AppColors.kBlackColor,
            ),
      titleSmall: isArabic()
          ? GoogleFonts.rubik(
              color: AppColors.kBlackColor,
            )
          : GoogleFonts.rubik(
              color: AppColors.kBlackColor,
            ),
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: AppColors.kPrimaryColor,
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      selectedItemColor: AppColors.kPrimaryColor,
      unselectedItemColor: AppColors.kWhiteColor,
      type: BottomNavigationBarType.fixed,
    ),
    buttonTheme: const ButtonThemeData(
      buttonColor: AppColors.kDarkThemColor,
    ),
    listTileTheme: const ListTileThemeData(
      iconColor: AppColors.kWhiteColor,
    ),
    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        textStyle: MaterialStateProperty.all(
          GoogleFonts.rubik(
            color: AppColors.kWhiteColor,
          ),
        ),
      ),
    ),
    datePickerTheme: DatePickerThemeData(
      backgroundColor: AppColors.kDarkThemColor,
      headerHeadlineStyle: GoogleFonts.rubik(color: AppColors.kWhiteColor),
      headerHelpStyle: GoogleFonts.rubik(color: AppColors.kWhiteColor),
      dayStyle: GoogleFonts.rubik(color: AppColors.kWhiteColor),
      rangePickerHeaderHeadlineStyle:
          GoogleFonts.rubik(color: AppColors.kWhiteColor),
      rangePickerHeaderHelpStyle:
          GoogleFonts.rubik(color: AppColors.kWhiteColor),
      yearStyle: GoogleFonts.rubik(color: AppColors.kWhiteColor),
      weekdayStyle: GoogleFonts.rubik(color: AppColors.kWhiteColor),
      surfaceTintColor: AppColors.kWhiteColor,
    ),
    timePickerTheme:
        const TimePickerThemeData(backgroundColor: AppColors.kDarkThemColor),
  );
}
