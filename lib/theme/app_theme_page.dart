import 'package:flutter/material.dart';
import 'package:flutter_app/theme/theme/app_theme.dart';
import 'package:flutter_app/theme/theme/appbars_page.dart';

class AppThemePage extends StatelessWidget {
  const AppThemePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: AppTheme.theme,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: true,
          title: const Text('App Theme'),
          actions: [
            IconButton(
              icon: const Icon(Icons.brightness_4),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => const AppbarPage()));
              },
            ),
          ],
        ),
        body: ListView(
          padding: const EdgeInsets.all(20),
          children: [
            // Theme(
            //   data: AppTheme.theme.copyWith(inputDecorationTheme: const InputDecorationTheme()),
            //   child: Column(
            //     children: [
            //       TextFormField(
            //         decoration: const InputDecoration(
            //           hintText: 'First name',
            //         ),
            //       ),
            //       TextFormField(
            //         decoration: const InputDecoration(
            //           hintText: 'Surname (optional)',
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
            // const SizedBox(height: 12.0),
            // Theme(
            //   data: AppTheme.lightGreyFormTheme,
            //   child: Column(
            //     children: [
            //       TextFormField(
            //         decoration: const InputDecoration(hintText: 'First name'),
            //       ),
            //       const SizedBox(height: 18.0),
            //       TextFormField(
            //         decoration: const InputDecoration(hintText: 'Surname (optional)'),
            //       ),
            //     ],
            //   ),
            // ),
            // const SizedBox(height: 120),
            // Theme(
            //   data: AppTheme.theme,
            //   child: TextFormField(
            //     decoration: const InputDecoration(
            //       hintText: 'Theme textFormField',
            //     ),
            //   ),
            // ),
            // const SizedBox(height: 120),
            // const SizedBox(height: 12.0),
            // Theme(
            //   data: AppTheme.googleFormTheme,
            //   child: Column(
            //     children: [
            //       TextFormField(
            //         decoration: const InputDecoration(hintText: 'First name'),
            //       ),
            //       const SizedBox(height: 18.0),
            //       TextFormField(
            //         decoration: const InputDecoration(hintText: 'Surname (optional)'),
            //       ),
            //     ],
            //   ),
            // ),
            // const SizedBox(height: 120),
            // Theme(
            //   data: AppTheme.theme,
            //   child: TextFormField(
            //     decoration: const InputDecoration(
            //       hintText: 'Theme textFormField',
            //     ),
            //   ),
            // ),
            // const SizedBox(height: 120),
            // Theme(
            //   data: ThemeData(),
            //   child: Column(
            //     children: [
            //       const Text(
            //         'Default Button design',
            //         style: TextStyle(fontSize: 18.0),
            //       ),
            //       const SizedBox(height: 12),
            //       Center(
            //         child: ElevatedButton(
            //           onPressed: () {},
            //           child: const Text('Elevated Button'),
            //         ),
            //       ),
            //       const SizedBox(height: 12),
            //       Center(
            //         child: OutlinedButton(
            //           onPressed: () {},
            //           child: const Text('Elevated Button'),
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
            // Theme(
            //   data: AppTheme.buttonStyleTheme,
            //   child: Column(
            //     children: [
            //       // const SizedBox(height: 120),
            //       ElevatedButton(
            //         onPressed: () {},
            //         child: const Text('Elevated button'),
            //       ),
            //       const SizedBox(height: 8.0),
            //       const ElevatedButton(
            //         onPressed: null,
            //         child: Text('Diabled Elevated button'),
            //       ),
            //       const SizedBox(height: 20),
            //       Center(
            //         child: OutlinedButton(
            //           onPressed: () {},
            //           child: const Text('Outlined Button'),
            //         ),
            //       ),
            //       const SizedBox(height: 8.0),
            //       const Center(
            //         child: OutlinedButton(
            //           onPressed: null,
            //           child: Text('Diabled Outlined Button'),
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
            // const SizedBox(height: 20),
            Theme(
              data: AppTheme.customHeightWithButton,
              child: Column(
                children: [
                  // const SizedBox(height: 120),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text(' Elevated button'),
                  ),
                  const SizedBox(height: 8.0),
                  const ElevatedButton(
                    onPressed: null,
                    child: Text('Disabled Elevated button'),
                  ),
                  const SizedBox(height: 20),
                  Center(
                    child: OutlinedButton(
                      onPressed: () {},
                      child: const Text('Outlined Button'),
                    ),
                  ),
                  const SizedBox(height: 8.0),
                  const Center(
                    child: OutlinedButton(
                      onPressed: null,
                      child: Text('Disabled Outlined Button'),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}