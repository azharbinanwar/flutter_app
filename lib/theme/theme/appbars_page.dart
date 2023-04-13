import 'package:flutter/material.dart';
import 'package:flutter_app/theme/theme/app_theme.dart';
import 'package:flutter_app/theme/theme/app_theme_extension.dart';

class AppbarPage extends StatelessWidget {
  const AppbarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Theme(

      data: AppTheme.theme.copyWith(
        appBarTheme: AppTheme.theme.extension<AppbarExtension>()?.appbarTheme3,
      ),
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: true,
          title: const Text('App Theme'),
          actions: [
            IconButton(
              icon: const Icon(Icons.brightness_4),
              onPressed: () {},
            ),
          ],
        ),
        body: ListView(
          children: [
            const SizedBox(height: 180.0),
            Theme(
              data: ThemeData(appBarTheme: AppTheme.theme.extension<AppbarExtension>()?.appbarTheme1),
              child: AppBar(
                title: const Text('Appbar 1'),
                actions: [
                  IconButton(
                    icon: const Icon(Icons.brightness_4),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            const SizedBox(height: 40.0),
            Theme(
              data: ThemeData(appBarTheme: AppTheme.theme.extension<AppbarExtension>()?.appbarTheme2),
              child: AppBar(
                title: const Text('Large appbar'),
                actions: [
                  IconButton(
                    icon: const Icon(Icons.brightness_4),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            const SizedBox(height: 40.0),
            Theme(
              data: ThemeData(appBarTheme: AppTheme.theme.extension<AppbarExtension>()?.appbarTheme3),
              child: AppBar(
                title: const Text('Rounded corner appbar'),
                actions: [
                  IconButton(
                    icon: const Icon(Icons.brightness_4),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            const SizedBox(height: 40.0),
            Theme(
              data: ThemeData(useMaterial3: true, colorScheme: ColorScheme.light()),
              child: AppBar(
                title: const Text('Material 3 (Light)'),
                actions: [
                  IconButton(
                    icon: const Icon(Icons.brightness_4),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            const SizedBox(height: 40.0),
            Theme(
              data: ThemeData(useMaterial3: true, colorScheme: ColorScheme.dark()),
              child: AppBar(
                title: const Text('Material 3 (Dark)'),
                actions: [
                  IconButton(
                    icon: const Icon(Icons.brightness_4),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            const SizedBox(height: 40.0),
          ],
        ),
      ),
    );
  }
}
