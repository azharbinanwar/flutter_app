import 'package:flutter/material.dart';

class AppbarExtension extends ThemeExtension<AppbarExtension> {
  final AppBarTheme appbarTheme1;
  final AppBarTheme appbarTheme2;
  final AppBarTheme appbarTheme3;

  AppbarExtension({
    required this.appbarTheme1,
    required this.appbarTheme2,
    required this.appbarTheme3,
  });

  @override
  AppbarExtension copyWith({
    AppBarTheme? appbarTheme1,
    AppBarTheme? appbarTheme2,
    AppBarTheme? appbarTheme3,
  }) {
    return AppbarExtension(
      appbarTheme1: appbarTheme1 ?? this.appbarTheme1,
      appbarTheme2: appbarTheme2 ?? this.appbarTheme2,
      appbarTheme3: appbarTheme3 ?? this.appbarTheme3,
    );
  }

  @override
  ThemeExtension<AppbarExtension> lerp(ThemeExtension<AppbarExtension>? other, double t) {
    if (other is! AppbarExtension) {
      return this;
    }
    return AppbarExtension(
      appbarTheme1: AppBarTheme.lerp(appbarTheme1, other.appbarTheme1, t),
      appbarTheme2: AppBarTheme.lerp(appbarTheme2, other.appbarTheme2, t),
      appbarTheme3: AppBarTheme.lerp(appbarTheme3, other.appbarTheme3, t),
    );
  }
}
