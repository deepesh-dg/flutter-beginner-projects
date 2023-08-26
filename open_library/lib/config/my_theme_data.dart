import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";
import "package:open_library/config/my_colors.dart";

class MyThemeData {
  static final textTheme = TextTheme(
    bodyLarge: GoogleFonts.inter(
      fontSize: 20,
      fontWeight: FontWeight.w700,
    ),
    bodyMedium: GoogleFonts.inter(
      fontSize: 16,
      fontWeight: FontWeight.w400,
    ),
    bodySmall: GoogleFonts.inter(
      fontSize: 14,
      fontWeight: FontWeight.w400,
    ),
  );

  static const tabBarTheme = TabBarTheme(
    indicator: UnderlineTabIndicator(
      borderSide: BorderSide(color: Colors.black, width: 2),
      insets: EdgeInsets.only(left: 5, right: 5),
    ),
    indicatorSize: TabBarIndicatorSize.label,
    dividerColor: MyColors.primary,
    labelPadding: EdgeInsets.symmetric(horizontal: 24, vertical: 0),
    unselectedLabelColor: MyColors.darkGrey,
    labelColor: MyColors.black,
    overlayColor: MaterialStatePropertyAll(Colors.transparent),
  );

  static final listTileTheme = ListTileThemeData(
    titleTextStyle: const TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w600,
      color: MyColors.black,
    ),
    subtitleTextStyle: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: MyColors.darkGrey.withOpacity(0.8),
    ),
  );

  static ThemeData getThemeData() {
    return ThemeData(
      // colorScheme: ColorScheme.fromSeed(seedColor: MyColors.primary),
      primaryColor: MyColors.primary,
      textTheme: textTheme,
      tabBarTheme: tabBarTheme,
      listTileTheme: listTileTheme,
      useMaterial3: true,
    );
  }
}
