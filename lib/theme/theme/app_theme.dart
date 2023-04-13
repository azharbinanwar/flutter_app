import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app/theme/theme/app_theme_extension.dart';

class AppTheme {
  static ThemeData get theme => ThemeData(
        // scaffoldBackgroundColor: const Color(0xE0F7FDF7),
        // colorScheme: ColorScheme.dark(),
        appBarTheme: const AppBarTheme(
          shadowColor: Colors.transparent,
          elevation: 0.0,
          centerTitle: true,
          color: Colors.grey,
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 20.0,
            fontWeight: FontWeight.normal,
          ),
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: Colors.transparent,
            statusBarIconBrightness: Brightness.light,
            statusBarBrightness: Brightness.dark,
          ),
        ),
        extensions: [
          AppbarExtension(
            appbarTheme1: const AppBarTheme(
              shadowColor: Colors.transparent,
              elevation: 0.0,
              centerTitle: true,
              color: Colors.grey,
              titleTextStyle: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
                fontWeight: FontWeight.normal,
              ),
              actionsIconTheme: IconThemeData(size: 16.0),
            ),
            appbarTheme2: const AppBarTheme(
              backgroundColor: Colors.grey,
              elevation: 8.0,
              toolbarHeight: 96.0,
              scrolledUnderElevation: 10.0,
              titleTextStyle: TextStyle(
                color: Colors.white,
                fontSize: 36.0,
                fontWeight: FontWeight.normal,
              ),
              actionsIconTheme: IconThemeData(color: Colors.white),
            ),
            appbarTheme3: const AppBarTheme(
              backgroundColor: Colors.green,
              shadowColor: Colors.red,
              elevation: 0.0,
              centerTitle: false,
              scrolledUnderElevation: 10.0,
              toolbarHeight: 72.0,
              titleTextStyle: TextStyle(color: Colors.white, fontSize: 20.0, fontWeight: FontWeight.normal),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20), bottomRight: Radius.circular(20)),
              ),
              actionsIconTheme: IconThemeData(
                color: Color(0xff1d3f0e),
                size: 24.0,
              ),
            ),
          ),
        ],

        inputDecorationTheme: InputDecorationTheme(
          fillColor: Colors.green.withOpacity(0.2),
          filled: true,
          hintStyle: TextStyle(color: Colors.green.withOpacity(0.4), fontSize: 16.0, fontWeight: FontWeight.normal),
          labelStyle: TextStyle(color: Colors.green.withOpacity(0.4), fontSize: 16.0, fontWeight: FontWeight.normal),
          floatingLabelStyle: const TextStyle(color: Colors.green, fontSize: 16.0, fontWeight: FontWeight.normal),
          counterStyle: const TextStyle(color: Colors.green, fontSize: 16.0, fontWeight: FontWeight.normal),
          // floatingLabelBehavior: FloatingLabelBehavior.always,
          prefixIconColor: Colors.green,
          contentPadding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 16.0),
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
          ),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.green, width: 1.0),
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.green, width: 1.0),
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
          ),
          errorBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.red, width: 1.0),
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
          ),
          focusedErrorBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.red, width: 1.0),
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
          ),
          disabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.green, width: 1.0),
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            elevation: 8.0,
            shadowColor: Colors.green,
            minimumSize: const Size(200.0, 56.0),
            backgroundColor: Colors.green,
            disabledBackgroundColor: Colors.green.withOpacity(0.4),
            disabledForegroundColor: Colors.grey,
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 16.0),
            textStyle: const TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
          ),
        ),
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: OutlinedButton.styleFrom(
            side: const BorderSide(color: Colors.green, width: 2.0),
            minimumSize: const Size(200.0, 56.0),
            disabledForegroundColor: Colors.grey,
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 16.0),
            textStyle: const TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
          ),
        ),
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            minimumSize: const Size(200.0, 56.0),
            disabledForegroundColor: Colors.grey,
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 16.0),
            textStyle: const TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
          ),
        ),
      );

  static ThemeData get buttonStyleTheme => ThemeData(
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            elevation: 8.0,
            shadowColor: Colors.green,
            backgroundColor: Colors.green,
            disabledBackgroundColor: Colors.green.withOpacity(0.4),
            disabledForegroundColor: Colors.grey,
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 16.0),
            textStyle: const TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
          ),
        ),
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: OutlinedButton.styleFrom(
            side: const BorderSide(color: Colors.green, width: 1.5),
            disabledForegroundColor: Colors.grey,
            foregroundColor: Colors.green,
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 16.0),
            textStyle: const TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
          ),
        ),
      );

  static ThemeData get customHeightWithButton => ThemeData(
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            elevation: 8.0,
            shadowColor: Colors.green,
            minimumSize: const Size(double.infinity, 56.0),
            backgroundColor: Colors.green,
            disabledBackgroundColor: Colors.green.withOpacity(0.4),
            disabledForegroundColor: Colors.grey,
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 16.0),
            textStyle: const TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
          ),
        ),
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: OutlinedButton.styleFrom(
            side: const BorderSide(color: Colors.green, width: 1.5),
            minimumSize: const Size(double.infinity, 56.0),
            disabledForegroundColor: Colors.grey,
            foregroundColor: Colors.green,
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 16.0),
            textStyle: const TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
          ),
        ),
      );

  static ThemeData get googleFormTheme => theme.copyWith(
        inputDecorationTheme: InputDecorationTheme(
          floatingLabelBehavior: FloatingLabelBehavior.auto,
          border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.withOpacity(0.4), width: 1.0),
            borderRadius: const BorderRadius.all(Radius.circular(4.0)),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.withOpacity(0.4), width: 1.0),
            borderRadius: const BorderRadius.all(Radius.circular(4.0)),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xff1872E9), width: 2.0),
            borderRadius: BorderRadius.all(Radius.circular(4.0)),
          ),
          errorBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.red, width: 2.0),
            borderRadius: BorderRadius.all(Radius.circular(4.0)),
          ),
          focusedErrorBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.red, width: 2.0),
            borderRadius: BorderRadius.all(Radius.circular(4.0)),
          ),
          disabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xff1872E9), width: 1.0),
            borderRadius: BorderRadius.all(Radius.circular(4.0)),
          ),
        ),
      );

  static ThemeData get lightGreyFormTheme => theme.copyWith(
        inputDecorationTheme: InputDecorationTheme(
          floatingLabelBehavior: FloatingLabelBehavior.auto,
          fillColor: Colors.grey.withOpacity(0.1),
          filled: true,
          hintStyle: TextStyle(color: Colors.grey.withOpacity(0.4)),
          border: const OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.all(Radius.circular(4.0)),
          ),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.all(Radius.circular(4.0)),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.all(Radius.circular(4.0)),
          ),
          errorBorder: const OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.all(Radius.circular(4.0)),
          ),
          focusedErrorBorder: const OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.all(Radius.circular(4.0)),
          ),
          disabledBorder: const OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.all(Radius.circular(4.0)),
          ),
        ),
      );
}
