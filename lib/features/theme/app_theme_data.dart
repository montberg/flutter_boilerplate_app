// ignore_for_file: deprecated_member_use

part of 'theme.dart';

ThemeData materialThemeFromAppTheme(AppThemeData theme, Brightness brightness) => ThemeData(
      textTheme: theme.textTheme,
      useMaterial3: true,
    );

class AppThemeData {
  AppThemeData({
    required this.main,
    required this.isDarkMode,
  });

  factory AppThemeData.dark() => AppThemeData(
        main: MainColors.dark(),
        isDarkMode: true,
      );

  factory AppThemeData.light() => AppThemeData(
        main: MainColors.light(),
        isDarkMode: false,
      );

  final bool isDarkMode;

  final MainColors main;

  TextStyle create({
    double fontSize = 14,
    FontWeight fontWeight = FontWeight.normal,
    Color? color,
    double? figmaHeight,
  }) {
    final height = (figmaHeight ?? fontSize) / fontSize;

    return TextStyle(
      fontSize: fontSize,
      fontWeight: fontWeight,
      height: height,
    );
  }

  TextStyle get h1 => create(
        fontSize: 32,
        figmaHeight: 36,
        fontWeight: FontWeight.w700,
      );
  TextStyle get h2 => create(
        fontSize: 26,
        figmaHeight: 28,
        fontWeight: FontWeight.w700,
      );
  TextStyle get h3 => create(
        fontSize: 24,
        figmaHeight: 24,
        fontWeight: FontWeight.w700,
      );

  TextStyle get s1 => create(
        fontSize: 16,
        figmaHeight: 20,
        fontWeight: FontWeight.w500,
      );
  TextStyle get s2 => create(
        figmaHeight: 18,
        fontWeight: FontWeight.w500,
      );

  TextStyle get b1 => create(
        fontSize: 20,
        figmaHeight: 24,
      );

  TextStyle get b2 => create(
        fontSize: 16,
        figmaHeight: 20,
      );
  TextStyle get b3 => create(figmaHeight: 18);

  TextStyle get c1 => create(
        fontSize: 14,
        figmaHeight: 14,
      );
  TextStyle get c2 => create(
        fontSize: 12,
        figmaHeight: 13,
      );

  TextTheme get textTheme => TextTheme(
        displayLarge: h1,
        displayMedium: h2,
        displaySmall: h3,
        bodyLarge: b1,
        bodyMedium: b1,
        titleMedium: s1,
        titleSmall: s2,
        labelLarge: s1,
        bodySmall: c1,
      );
}
